package com.wink.lpyx.manager.mapper.system;

import com.wink.lpyx.model.dto.system.SysRoleDto;
import com.wink.lpyx.model.entity.system.SysRole;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysRoleMapper {
    List<SysRole> findByPage(SysRoleDto sysRoleDto);

    void saveSysRole(SysRole sysRole);

    void updateSysRole(SysRole sysRole);

    void removeById(Long id);

    List<SysRole> findAllRoles();
}
