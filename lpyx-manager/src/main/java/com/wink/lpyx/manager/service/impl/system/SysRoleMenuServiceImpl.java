package com.wink.lpyx.manager.service.impl.system;

import com.wink.lpyx.manager.mapper.system.SysMenuMapper;
import com.wink.lpyx.manager.mapper.system.SysRoleMenuMapper;
import com.wink.lpyx.manager.service.SysRoleMenuService;
import com.wink.lpyx.model.dto.system.AssignMenuDto;
import com.wink.lpyx.model.entity.system.SysMenu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class SysRoleMenuServiceImpl implements SysRoleMenuService {
    @Autowired
    private SysRoleMenuMapper sysRoleMenuMapper;

    @Autowired
    private SysMenuMapper sysMenuMapper;

    @Override
    public Map<String, Object> findSysRoleMenuByRoleId(Long roleId) {
        //查询所有菜单
        List<SysMenu> sysMenuList = sysMenuMapper.findAll();
        List<Long> roleMenuIds = sysRoleMenuMapper.findSysRoleMenuByRoleId(roleId);
        Map<String, Object> map = new HashMap<>();
        map.put("sysMenuList", sysMenuList);
        map.put("roleMenuIds", roleMenuIds);
        return map;
    }

    @Override
    @Transactional
    public void doAssign(AssignMenuDto assignMenuDto) {
        //删除角色之前分配过的菜单数据
        sysRoleMenuMapper.deleteByRoleId(assignMenuDto.getRoleId());

        //保存分配数据
        List<Map<String, Number>> menuIdList = assignMenuDto.getMenuIdList();
        if (menuIdList != null && !menuIdList.isEmpty()) {
            sysRoleMenuMapper.doAssign(assignMenuDto);
        }
    }
}
