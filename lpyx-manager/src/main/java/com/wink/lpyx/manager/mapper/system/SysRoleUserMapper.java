package com.wink.lpyx.manager.mapper.system;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface SysRoleUserMapper {
    // 根据用户ID删除
    void deleteByUserId(@Param("userId") Long userId);

    // 根据用户ID分配角色
    void doAssign(@Param("userId") Long userId, @Param("roleIds") List<Long> roleIds);

    List<Long> findRoleIdsByUserId(Long userId);
}
