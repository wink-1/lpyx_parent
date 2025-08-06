package com.wink.lpyx.utils;

import com.wink.lpyx.model.entity.system.SysUser;

public class AuthContextUtil {
    //    创建一个ThreadLocal对象
    private static ThreadLocal<SysUser> threadLocal = new ThreadLocal<>();

    //   往ThreadLocal放数据
    public static void set(SysUser sysUser) {
        threadLocal.set(sysUser);
    }

    //    从ThreadLocal取数据
    public static SysUser get() {
        return threadLocal.get();
    }

    //    清除ThreadLocal数据
    public static void remove() {
        threadLocal.remove();
    }

}

