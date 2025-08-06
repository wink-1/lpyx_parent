package com.wink.lpyx.manager.service;

import com.wink.lpyx.model.dto.system.AssignMenuDto;

import java.util.Map;

public interface SysRoleMenuService {
    Map<String, Object> findSysRoleMenuByRoleId(Long roleId);

    void doAssign(AssignMenuDto assignMenuDto);
}
