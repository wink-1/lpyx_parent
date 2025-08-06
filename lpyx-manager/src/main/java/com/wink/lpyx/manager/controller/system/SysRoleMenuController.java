package com.wink.lpyx.manager.controller.system;

import com.wink.lpyx.manager.service.SysRoleMenuService;
import com.wink.lpyx.model.dto.system.AssignMenuDto;
import com.wink.lpyx.model.vo.common.Result;
import com.wink.lpyx.model.vo.common.ResultCodeEnum;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("admin/system/sysRoleMenu")
public class SysRoleMenuController {
    @Autowired
    private SysRoleMenuService sysRoleMenuService;

    //查询所有菜单那和查询角色分配的菜单id列表
    @Operation(summary = "查询所有菜单那和查询角色分配的菜单id列表")
    @GetMapping("/findSysRoleMenuByRoleId/{roleId}")
    public Result findSysRoleMenuByRoleId(@PathVariable("roleId") Long roleId) {
        Map<String, Object> map = sysRoleMenuService.findSysRoleMenuByRoleId(roleId);
        return Result.build(map, ResultCodeEnum.SUCCESS);
    }

    //保存角色分配的菜单数据
    @Operation(summary = "保存角色分配的菜单数据")
    @PostMapping("/doAssign")
    public Result doAssign(@RequestBody AssignMenuDto assignMenuDto) {
        sysRoleMenuService.doAssign(assignMenuDto);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }


}
