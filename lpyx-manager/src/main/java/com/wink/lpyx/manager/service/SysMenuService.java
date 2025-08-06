package com.wink.lpyx.manager.service;

import com.wink.lpyx.model.entity.system.SysMenu;
import com.wink.lpyx.model.vo.system.SysMenuVo;

import java.util.List;

public interface SysMenuService {
    List<SysMenu> findNodes();

    void saveSysMenu(SysMenu sysMenu);

    void updateSysMenu(SysMenu sysMenu);

    void removeById(Long id);

    List<SysMenuVo> findMenusByUserId();
}
