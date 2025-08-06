package com.wink.lpyx.manager.controller.order;

import com.wink.lpyx.manager.service.OrderInfoService;
import com.wink.lpyx.model.dto.order.OrderStatisticsDto;
import com.wink.lpyx.model.vo.common.Result;
import com.wink.lpyx.model.vo.common.ResultCodeEnum;
import com.wink.lpyx.model.vo.order.OrderStatisticsVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/admin/order/orderInfo")
public class OrderInfoController {

    @Autowired
    private OrderInfoService orderInfoService;

    @GetMapping("/getOrderStatisticsData")
    public Result<OrderStatisticsVo> getOrderStatisticsData(OrderStatisticsDto orderStatisticsDto) {
        OrderStatisticsVo orderStatisticsVo = orderInfoService.getOrderStatisticsData(orderStatisticsDto);
        return Result.build(orderStatisticsVo, ResultCodeEnum.SUCCESS);
    }

}
