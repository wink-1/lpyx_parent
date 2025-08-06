package com.wink.lpyx.manager.service;

import com.github.pagehelper.PageInfo;
import com.wink.lpyx.model.dto.system.SysRoleDto;
import com.wink.lpyx.model.entity.system.SysRole;

import java.util.Map;

public interface SysRoleService {
    PageInfo<SysRole> findByPage(Integer current, Integer limit, SysRoleDto sysRoleDto);

    void saveSysRole(SysRole sysRole);

    void updateSysRole(SysRole sysRole);

    void removeById(Long id);

    Map<String, Object> findAllRoles(Long userId);
}
