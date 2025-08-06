package com.wink.lpyx.manager.mapper.task;

import com.wink.lpyx.model.dto.order.OrderStatisticsDto;
import com.wink.lpyx.model.entity.order.OrderStatistics;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface OrderStatisticsMapper {
    void insert(OrderStatistics orderStatistics);

    List<OrderStatistics> selectList(OrderStatisticsDto orderStatisticsDto);
}
