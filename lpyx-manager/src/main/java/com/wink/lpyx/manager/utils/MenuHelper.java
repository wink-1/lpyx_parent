package com.wink.lpyx.manager.utils;

import com.wink.lpyx.model.entity.system.SysMenu;

import java.util.ArrayList;
import java.util.List;

//封装树形菜单数据
public class MenuHelper {

    //递归方式
    public static List<SysMenu> buildTree(List<SysMenu> menus) {

        //创建List集合，用于封装最终的数据
        List<SysMenu> treeMenus = new ArrayList<>();
        //遍历所有菜单集合
        for (SysMenu menu : menus) {
            //判断当前菜单是否为顶级菜单
            if (menu.getParentId() == 0) {
                //如果是顶级菜单，则递归获取子菜单
                treeMenus.add(findChildren(menu, menus));
            }
        }
        return treeMenus;
    }

    private static SysMenu findChildren(SysMenu menu, List<SysMenu> menus) {
        for (SysMenu item : menus) {
            if (menu.getId().equals(item.getParentId())) {
                if (menu.getChildren() == null) {
                    menu.setChildren(new ArrayList<>());
                }
                menu.getChildren().add(findChildren(item, menus));
            }
        }
        return menu;
    }
}
