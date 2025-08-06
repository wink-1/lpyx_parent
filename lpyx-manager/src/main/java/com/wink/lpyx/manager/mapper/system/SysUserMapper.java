package com.wink.lpyx.manager.mapper.system;

import com.wink.lpyx.model.dto.system.SysUserDto;
import com.wink.lpyx.model.entity.system.SysUser;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysUserMapper {

    SysUser selectByUserName(String userName);

    List<SysUser> findByPage(SysUserDto sysUserDto);

    void saveSysUser(SysUser sysUser);

    void removeById(Long id);

    void updateSysUser(SysUser sysUser);

}
