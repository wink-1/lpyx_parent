package com.wink.lpyx.manager.controller.system;

import com.wink.lpyx.manager.service.SysMenuService;
import com.wink.lpyx.model.entity.system.SysMenu;
import com.wink.lpyx.model.vo.common.Result;
import com.wink.lpyx.model.vo.common.ResultCodeEnum;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/admin/system/sysMenu")
public class SysMenuController {
    @Autowired
    private SysMenuService sysMenuService;


    @Operation(summary = "获取菜单列表")
    @GetMapping("/findNodes")
    public Result findNodes() {
        List<SysMenu> list = sysMenuService.findNodes();
        return Result.build(list, ResultCodeEnum.SUCCESS);
    }

    @Operation(summary = "菜单添加方法")
    @PostMapping("/saveSysMenu")
    public Result saveSysMenu(@RequestBody SysMenu sysMenu) {
        sysMenuService.saveSysMenu(sysMenu);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

    @Operation(summary = "菜单修改方法")
    @PutMapping("/updateSysMenu")
    public Result updateSysMenu(@RequestBody SysMenu sysMenu) {
        sysMenuService.updateSysMenu(sysMenu);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

    @Operation(summary = "菜单删除方法")
    @DeleteMapping("/removeById/{id}")
    public Result removeById(@PathVariable Long id) {
        sysMenuService.removeById(id);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }


}
