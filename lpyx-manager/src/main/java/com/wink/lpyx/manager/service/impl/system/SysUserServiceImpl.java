package com.wink.lpyx.manager.service.impl.system;

import cn.hutool.core.util.StrUtil;
import cn.hutool.crypto.digest.DigestUtil;
import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wink.lpyx.common.exception.CustomException;
import com.wink.lpyx.manager.mapper.system.SysRoleUserMapper;
import com.wink.lpyx.manager.mapper.system.SysUserMapper;
import com.wink.lpyx.manager.service.SysUserService;
import com.wink.lpyx.model.dto.system.AssignRoleDto;
import com.wink.lpyx.model.dto.system.LoginDto;
import com.wink.lpyx.model.dto.system.SysUserDto;
import com.wink.lpyx.model.entity.system.SysUser;
import com.wink.lpyx.model.vo.common.ResultCodeEnum;
import com.wink.lpyx.model.vo.system.LoginVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

@Service
public class SysUserServiceImpl implements SysUserService {
    @Autowired
    private SysUserMapper sysUserMapper;

    @Autowired
    private SysRoleUserMapper sysRoleUserMapper;

    @Autowired
    private RedisTemplate<String, String> redisTemplate;

    //用户登录
    @Override
    public LoginVo login(LoginDto loginDto) {
//        获取验证码和redis中的验证码
        String captcha = loginDto.getCaptcha();
        String codeKey = loginDto.getCodeKey();
        String redisCode = redisTemplate.opsForValue().get("user:validate:" + codeKey);
//        验证码不一致，抛出异常
        if (StrUtil.isEmpty(redisCode) || !captcha.equalsIgnoreCase(redisCode)) {
            throw new CustomException(ResultCodeEnum.VALIDATECODE_ERROR);
        }
//        验证码相同，删除redis中的验证码
        redisTemplate.delete("user:validate:" + codeKey);
//        获得用户名
        String userName = loginDto.getUserName();
//        根据用户名查询数据库表sys_user
        SysUser sysUser = sysUserMapper.selectByUserName(userName);
//        查询不到，用户不存在，返回错误信息
        if (sysUser == null) {
//            throw new RuntimeException("用户不存在");
            throw new CustomException(ResultCodeEnum.LOGIN_ERROR);
        }
//        查到用户，比较输入的密码是否正确
        String dbPassword = sysUser.getPassword();//获取用户的加密密码（MD5值）
        String password = DigestUtil.md5Hex(loginDto.getPassword());//获取输入的密码并进行MD5加密
//        密码一致登录成功，反之失败
        if (!dbPassword.equals(password)) {
//            throw new RuntimeException("密码错误");
            throw new CustomException(ResultCodeEnum.LOGIN_ERROR);
        }
//        登录成功生成用户唯一标识token
        String token = UUID.randomUUID().toString().replaceAll("-", "");
//        把登录成功用户信息放到redis里面(key:token value:用户信息)
        redisTemplate.opsForValue().set("user:login:" + token,
                JSON.toJSONString(sysUser),
                7,
                TimeUnit.DAYS);
//        返回loginvo
        LoginVo loginVo = new LoginVo();
        loginVo.setToken(token);
        return loginVo;
    }

    //获取用户信息
    @Override
    public SysUser getUserinfo(String token) {
//    根据token从redis查询用户信息
        String userJson = redisTemplate.opsForValue().get("user:login:" + token);
//      返回用户信息
        return JSON.parseObject(userJson, SysUser.class);
    }

    //用户退出
    @Override
    public void logout(String token) {
        redisTemplate.delete("user:login:" + token);
    }

    @Override
    public PageInfo<SysUser> findByPage(Integer current, Integer limit, SysUserDto sysUserDto) {
        PageHelper.startPage(current, limit);
        List<SysUser> sysUserList = sysUserMapper.findByPage(sysUserDto);
        return new PageInfo<>(sysUserList);

    }

    @Override
    @Transactional
    public void doAssign(AssignRoleDto assignRoleDto) {
        //根据用户id删除之前分配的角色数据
        sysRoleUserMapper.deleteByUserId(assignRoleDto.getUserId());
        //重新分配新角色
        List<Long> roleIdList = assignRoleDto.getRoleIds();
        sysRoleUserMapper.doAssign(assignRoleDto.getUserId(), roleIdList);
    }

    @Override
    public void saveSysRole(SysUser sysUser) {
//        判断用户名不能重复
        String username = sysUser.getUserName();
        SysUser dbSysUser = sysUserMapper.selectByUserName(username);
        if (dbSysUser != null) {
            throw new CustomException(ResultCodeEnum.USER_NAME_IS_EXISTS);
        }
//        把密码进行加密处理
        String password = DigestUtil.md5Hex(sysUser.getPassword());
        sysUser.setPassword(password);
        sysUserMapper.saveSysUser(sysUser);
    }

    @Override
    public void removeById(Long id) {
        sysUserMapper.removeById(id);
    }

    @Override
    public void updateSysRole(SysUser sysUser) {
        sysUserMapper.updateSysUser(sysUser);
    }

}
