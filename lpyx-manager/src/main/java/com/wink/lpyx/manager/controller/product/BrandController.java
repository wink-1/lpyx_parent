package com.wink.lpyx.manager.controller.product;

import com.github.pagehelper.PageInfo;
import com.wink.lpyx.manager.service.BrandService;
import com.wink.lpyx.model.entity.product.Brand;
import com.wink.lpyx.model.vo.common.Result;
import com.wink.lpyx.model.vo.common.ResultCodeEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/admin/product/brand")
public class BrandController {

    @Autowired
    private BrandService brandService;


    @GetMapping("/findByPage/{page}/{limit}")
    public Result<PageInfo<Brand>> findByPage(@PathVariable Integer page, @PathVariable Integer limit) {
        PageInfo<Brand> pageInfo = brandService.findByPage(page, limit);
        return Result.build(pageInfo, ResultCodeEnum.SUCCESS);
    }

    @GetMapping("/findAll")
    public Result findAll() {
        List<Brand> list = brandService.findAll();
        return Result.build(list, ResultCodeEnum.SUCCESS);
    }

    @PostMapping("/save")
    public Result save(@RequestBody Brand brand) {
        brandService.save(brand);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

    @PutMapping("/update")
    public Result update(@RequestBody Brand brand) {
        brandService.update(brand);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

    @DeleteMapping("/deleteById/{id}")
    public Result deleteById(@PathVariable Long id) {
        brandService.deleteById(id);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }


}
