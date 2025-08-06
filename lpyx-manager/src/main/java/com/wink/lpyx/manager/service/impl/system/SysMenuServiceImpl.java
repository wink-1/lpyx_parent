package com.wink.lpyx.manager.service.impl.system;

import com.wink.lpyx.common.exception.CustomException;
import com.wink.lpyx.manager.mapper.system.SysMenuMapper;
import com.wink.lpyx.manager.service.SysMenuService;
import com.wink.lpyx.manager.utils.MenuHelper;
import com.wink.lpyx.model.entity.system.SysMenu;
import com.wink.lpyx.model.entity.system.SysUser;
import com.wink.lpyx.model.vo.common.ResultCodeEnum;
import com.wink.lpyx.model.vo.system.SysMenuVo;
import com.wink.lpyx.utils.AuthContextUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.LinkedList;
import java.util.List;

@Service
public class SysMenuServiceImpl implements SysMenuService {
    @Autowired
    private SysMenuMapper sysMenuMapper;

    @Override
    public List<SysMenu> findNodes() {
        //查询所有菜单，返回List集合
        List<SysMenu> list = sysMenuMapper.findAll();
        if (CollectionUtils.isEmpty(list)) {
            return null;
        }
        //调用工具类的方法，把返回的List集合封装要求数据格式
        return MenuHelper.buildTree(list);
    }

    @Override
    public void saveSysMenu(SysMenu sysMenu) {
        sysMenuMapper.saveSysMenu(sysMenu);
    }

    @Override
    public List<SysMenuVo> findMenusByUserId() {
        //获取当前用户id
        SysUser sysUser = AuthContextUtil.get();
        Long userId = sysUser.getId();

        //根据userId查询可以操作菜单
        List<SysMenu> sysMenuList = sysMenuMapper.findMenusByUserId(userId);
        List<SysMenu> sysMenuTreeList = MenuHelper.buildTree(sysMenuList);
        //封装要求数据格式，返回
        return buildMenus(sysMenuTreeList);

    }

    // 将List<SysMenu>对象转换成List<SysMenuVo>对象
    private List<SysMenuVo> buildMenus(List<SysMenu> menus) {

        List<SysMenuVo> sysMenuVoList = new LinkedList<>();
        for (SysMenu sysMenu : menus) {
            SysMenuVo sysMenuVo = new SysMenuVo();
            sysMenuVo.setTitle(sysMenu.getTitle());
            sysMenuVo.setName(sysMenu.getComponent());
            List<SysMenu> children = sysMenu.getChildren();
            if (!CollectionUtils.isEmpty(children)) {
                sysMenuVo.setChildren(buildMenus(children));
            }
            sysMenuVoList.add(sysMenuVo);
        }
        return sysMenuVoList;
    }

    @Override
    public void removeById(Long id) {
        //如果是一级菜单，判断下面是否有子菜单
        int count = sysMenuMapper.findChildCountById(id);
        //有子菜单无法删除
        if (count > 0) {
            throw new CustomException(ResultCodeEnum.NODE_ERROR);
        }
        sysMenuMapper.removeById(id);

    }

    @Override
    public void updateSysMenu(SysMenu sysMenu) {
        sysMenuMapper.updateSysMenu(sysMenu);
    }
}
