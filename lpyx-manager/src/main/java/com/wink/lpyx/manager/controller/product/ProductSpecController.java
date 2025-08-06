package com.wink.lpyx.manager.controller.product;

import com.github.pagehelper.PageInfo;
import com.wink.lpyx.manager.service.ProductSpecService;
import com.wink.lpyx.model.entity.product.ProductSpec;
import com.wink.lpyx.model.vo.common.Result;
import com.wink.lpyx.model.vo.common.ResultCodeEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping(value = "/admin/product/productSpec")
public class ProductSpecController {

    @Autowired
    private ProductSpecService productSpecService;

    @GetMapping("/findByPage/{page}/{limit}")
    public Result findByPage(@PathVariable Integer page, @PathVariable Integer limit) {
        PageInfo<ProductSpec> pageInfo = productSpecService.findByPage(page, limit);
        return Result.build(pageInfo, ResultCodeEnum.SUCCESS);
    }

    @GetMapping("/findAll")
    public Result findAll() {
        return Result.build(productSpecService.findAll(), ResultCodeEnum.SUCCESS);
    }

    @PostMapping("/save")
    public Result save(@RequestBody ProductSpec productSpec) {
        productSpecService.save(productSpec);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

    @PutMapping("/updateById")
    public Result updateById(@RequestBody ProductSpec productSpec) {
        productSpecService.updateById(productSpec);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

    @DeleteMapping("/deleteById/{id}")
    public Result removeById(@PathVariable Long id) {
        productSpecService.deleteById(id);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }


}
