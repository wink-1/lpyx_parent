package com.wink.lpyx.manager.controller.product;

import com.wink.lpyx.manager.service.impl.product.ProductUnitServiceImpl;
import com.wink.lpyx.model.entity.base.ProductUnit;
import com.wink.lpyx.model.vo.common.Result;
import com.wink.lpyx.model.vo.common.ResultCodeEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/admin/product/productUnit")
public class ProductUnitController {

    @Autowired
    private ProductUnitServiceImpl productUnitService;


    @GetMapping("/findAll")
    public Result findAll() {
        List<ProductUnit> list = productUnitService.findAll();
        return Result.build(list, ResultCodeEnum.SUCCESS);
    }

}
