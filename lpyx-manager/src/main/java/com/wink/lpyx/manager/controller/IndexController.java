package com.wink.lpyx.manager.controller;

import com.wink.lpyx.manager.service.SysMenuService;
import com.wink.lpyx.manager.service.SysUserService;
import com.wink.lpyx.manager.service.ValidateCodeService;
import com.wink.lpyx.model.dto.system.LoginDto;
import com.wink.lpyx.model.entity.system.SysUser;
import com.wink.lpyx.model.vo.common.Result;
import com.wink.lpyx.model.vo.common.ResultCodeEnum;
import com.wink.lpyx.model.vo.system.LoginVo;
import com.wink.lpyx.model.vo.system.SysMenuVo;
import com.wink.lpyx.model.vo.system.ValidateCodeVo;
import com.wink.lpyx.utils.AuthContextUtil;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Tag(name = "用户接口")
@RestController
@RequestMapping(value = "/admin/system/index")
public class IndexController {
    @Autowired
    private SysUserService sysUserService;

    @Autowired
    private ValidateCodeService validateCodeService;

    @Autowired
    private SysMenuService sysMenuService;

    //生成图片验证码
    @GetMapping("/generateValidateCode")
    public Result<ValidateCodeVo> generateValidateCode() {
        ValidateCodeVo validateCodeVo = validateCodeService.generateValidateCode();
        return Result.build(validateCodeVo, ResultCodeEnum.SUCCESS);
    }

    @Operation(summary = "用户登录")
    @PostMapping("/login")
    public Result login(@RequestBody LoginDto loginDto) {
        LoginVo loginVo = sysUserService.login(loginDto);
        return Result.build(loginVo, ResultCodeEnum.SUCCESS);
    }

    @Operation(summary = "用户退出")
    @GetMapping("logout")
    public Result logout(@RequestHeader("token") String token) {
        sysUserService.logout(token);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }


//    @Operation(summary = "获取当前登录用户信息")
//    @GetMapping("/getUserinfo")
//    public Result<SysUser> getUserinfo(@RequestHeader("token") String token) {

    /// /        从请求头里获取token
//        SysUser sysUser = sysUserService.getUserinfo(token);
//        return Result.build(sysUser, ResultCodeEnum.SUCCESS);
//
//    }
    @Operation(summary = "获取当前登录用户信息")
    @GetMapping("/getUserinfo")
    public Result<SysUser> getUserinfo() {
        //直接从ThreadLocal中加载用户数据
        return Result.build(AuthContextUtil.get(), ResultCodeEnum.SUCCESS);

    }

    @Operation(summary = "查询用户可以操作的菜单")
    @GetMapping("/menus")
    public Result menus() {
        List<SysMenuVo> list = sysMenuService.findMenusByUserId();
        return Result.build(list, ResultCodeEnum.SUCCESS);
    }


}
