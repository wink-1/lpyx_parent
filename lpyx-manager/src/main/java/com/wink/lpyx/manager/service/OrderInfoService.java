package com.wink.lpyx.manager.service;

import com.wink.lpyx.model.dto.order.OrderStatisticsDto;
import com.wink.lpyx.model.vo.order.OrderStatisticsVo;

public interface OrderInfoService {
    OrderStatisticsVo getOrderStatisticsData(OrderStatisticsDto orderStatisticsDto);
}
