package com.wink.lpyx.manager.service;

import com.github.pagehelper.PageInfo;
import com.wink.lpyx.model.dto.system.AssignRoleDto;
import com.wink.lpyx.model.dto.system.LoginDto;
import com.wink.lpyx.model.dto.system.SysUserDto;
import com.wink.lpyx.model.entity.system.SysUser;
import com.wink.lpyx.model.vo.system.LoginVo;

public interface SysUserService {

    /**
     * 登录
     *
     * @param loginDto
     * @return
     */
    LoginVo login(LoginDto loginDto);

    // 根据token获取用户信息
    SysUser getUserinfo(String token);

    // 根据token注销登录
    void logout(String token);

    // 根据分页信息和用户信息进行分页查询
    PageInfo<SysUser> findByPage(Integer current, Integer limit, SysUserDto sysUserDto);

    // 保存用户角色信息
    void saveSysRole(SysUser sysUser);

    // 根据id删除用户角色信息
    void removeById(Long id);

    // 更新用户角色信息
    void updateSysRole(SysUser sysUser);

    // 分配角色
    void doAssign(AssignRoleDto assignRoleDto);
}
