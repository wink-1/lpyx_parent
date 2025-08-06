package com.wink.lpyx.manager.mapper.task;

import com.wink.lpyx.model.entity.order.OrderStatistics;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderInfoMapper {
    OrderStatistics selectOrderStatistics(String createTime);
}
