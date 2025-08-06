package com.wink.lpyx.manager.controller.system;


import com.github.pagehelper.PageInfo;
import com.wink.lpyx.manager.service.SysRoleService;
import com.wink.lpyx.model.dto.system.SysRoleDto;
import com.wink.lpyx.model.entity.system.SysRole;
import com.wink.lpyx.model.vo.common.Result;
import com.wink.lpyx.model.vo.common.ResultCodeEnum;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping(value = "/admin/system/sysRole")
public class SysRoleController {

    @Autowired
    private SysRoleService sysRoleService;

    @GetMapping(value = "/findAllRoles/{userId}")
    public Result<Map<String, Object>> findAllRoles(@PathVariable("userId") Long userId) {
        Map<String, Object> resultMap = sysRoleService.findAllRoles(userId);
        return Result.build(resultMap, ResultCodeEnum.SUCCESS);
    }


    @Operation(summary = "获取角色列表方法")
    @PostMapping(value = "/findByPage/{current}/{limit}")//current当前页；limit每页显示记录数
    public Result findByPage(@PathVariable("current") Integer current,
                             @PathVariable("limit") Integer limit,
                             @RequestBody SysRoleDto sysRoleDto) {
        PageInfo<SysRole> pageInfo = sysRoleService.findByPage(current, limit, sysRoleDto);
        return Result.build(pageInfo, ResultCodeEnum.SUCCESS);

    }

    @Operation(summary = "添加角色方法")
    @PostMapping(value = "/saveSysRole")
    public Result saveSysRole(@RequestBody SysRole sysRole) {
        sysRoleService.saveSysRole(sysRole);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

    @Operation(summary = "删除角色方法")
    @DeleteMapping(value = "/removeById/{id}")
    public Result removeById(@PathVariable("id") Long id) {
        sysRoleService.removeById(id);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

    @Operation(summary = "修改角色方法")
    @PutMapping(value = "/updateSysRole")
    public Result updateSysRole(@RequestBody SysRole sysRole) {
        sysRoleService.updateSysRole(sysRole);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

}
