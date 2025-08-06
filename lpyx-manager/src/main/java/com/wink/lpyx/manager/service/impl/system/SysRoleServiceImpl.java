package com.wink.lpyx.manager.service.impl.system;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wink.lpyx.manager.mapper.system.SysRoleMapper;
import com.wink.lpyx.manager.mapper.system.SysRoleUserMapper;
import com.wink.lpyx.manager.service.SysRoleService;
import com.wink.lpyx.model.dto.system.SysRoleDto;
import com.wink.lpyx.model.entity.system.SysRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class SysRoleServiceImpl implements SysRoleService {
    @Autowired
    private SysRoleMapper sysRoleMapper;

    @Autowired
    private SysRoleUserMapper sysRoleUserMapper;

    @Override
    public PageInfo<SysRole> findByPage(Integer current, Integer limit, SysRoleDto sysRoleDto) {
        //设置分页参数
        PageHelper.startPage(current, limit);
        //根据条件查询所有数据
        List<SysRole> sysRoleList = sysRoleMapper.findByPage(sysRoleDto);
        //封装分页数据
        return new PageInfo<>(sysRoleList);
    }

    @Override
    public void saveSysRole(SysRole sysRole) {
        sysRoleMapper.saveSysRole(sysRole);
    }

    @Override
    public void updateSysRole(SysRole sysRole) {
        sysRoleMapper.updateSysRole(sysRole);
    }

    @Override
    public void removeById(Long id) {
        sysRoleMapper.removeById(id);
    }

    @Override
    public Map<String, Object> findAllRoles(Long userId) {
        List<SysRole> sysRoleList = sysRoleMapper.findAllRoles();
        List<Long> roleIds = sysRoleUserMapper.findRoleIdsByUserId(userId);
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("allRolesList", sysRoleList);
        resultMap.put("sysUserRoles", roleIds);
        return resultMap;
    }
}
