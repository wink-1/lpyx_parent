package com.wink.lpyx.manager.mapper.system;

import com.wink.lpyx.model.entity.system.SysMenu;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysMenuMapper {
    List<SysMenu> findAll();

    void saveSysMenu(SysMenu sysMenu);

    void updateSysMenu(SysMenu sysMenu);

    void removeById(Long id);

    int findChildCountById(Long id);

    List<SysMenu> findMenusByUserId(Long userId);
}
