package com.wink.lpyx.manager.controller.system;

import com.github.pagehelper.PageInfo;
import com.wink.lpyx.manager.service.SysUserService;
import com.wink.lpyx.model.dto.system.AssignRoleDto;
import com.wink.lpyx.model.dto.system.SysUserDto;
import com.wink.lpyx.model.entity.system.SysUser;
import com.wink.lpyx.model.vo.common.Result;
import com.wink.lpyx.model.vo.common.ResultCodeEnum;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/admin/system/sysUser")
public class SysUserController {

    @Autowired
    private SysUserService sysUserService;

    @Operation(summary = "获取用户列表方法")
    @PostMapping(value = "/findByPage/{current}/{limit}")//current当前页；limit每页显示记录数
    public Result findByPage(@PathVariable("current") Integer current,
                             @PathVariable("limit") Integer limit,
                             @RequestBody SysUserDto sysUserDto) {
        PageInfo<SysUser> pageInfo = sysUserService.findByPage(current, limit, sysUserDto);
        return Result.build(pageInfo, ResultCodeEnum.SUCCESS);

    }

    @Operation(summary = "添加用户方法")
    @PostMapping(value = "/saveSysUser")
    public Result saveSysUser(@RequestBody SysUser sysUser) {
        sysUserService.saveSysRole(sysUser);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

    @Operation(summary = "删除用户方法")
    @DeleteMapping(value = "/removeById/{id}")
    public Result removeById(@PathVariable("id") Long id) {
        sysUserService.removeById(id);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

    @Operation(summary = "修改用户方法")
    @PutMapping(value = "/updateSysUser")
    public Result updateSysUser(@RequestBody SysUser sysUser) {
        sysUserService.updateSysRole(sysUser);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

    @Operation(summary = "分配角色方法")
    @PutMapping("/doAssign")
    public Result doAssign(@RequestBody AssignRoleDto assignRoleDto) {
        sysUserService.doAssign(assignRoleDto);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }
}
