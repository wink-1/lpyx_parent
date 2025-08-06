package com.wink.lpyx.manager.controller.product;


import com.github.pagehelper.PageInfo;
import com.wink.lpyx.manager.service.CategoryBrandService;
import com.wink.lpyx.model.dto.product.CategoryBrandDto;
import com.wink.lpyx.model.entity.product.Brand;
import com.wink.lpyx.model.entity.product.CategoryBrand;
import com.wink.lpyx.model.vo.common.Result;
import com.wink.lpyx.model.vo.common.ResultCodeEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/admin/product/categoryBrand")
public class CategoryBrandController {

    @Autowired
    private CategoryBrandService categoryBrandService;

    @GetMapping("/findByPage/{page}/{limit}")
    public Result findByPage(@PathVariable Integer page, @PathVariable Integer limit, CategoryBrandDto CategoryBrandDto) {
        PageInfo<CategoryBrand> pageInfo = categoryBrandService.findByPage(page, limit, CategoryBrandDto);
        return Result.build(pageInfo, ResultCodeEnum.SUCCESS);
    }

    @GetMapping("/findBrandByCategoryId/{CategoryId}")
    public Result findBrandByCategoryId(@PathVariable Long CategoryId) {
        List<Brand> list = categoryBrandService.findBrandByCategoryId(CategoryId);
        return Result.build(list, ResultCodeEnum.SUCCESS);
    }

    @PostMapping("/save")
    public Result save(@RequestBody CategoryBrand categoryBrand) {
        categoryBrandService.save(categoryBrand);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

    @PutMapping("updateById")
    public Result updateById(@RequestBody CategoryBrand categoryBrand) {
        categoryBrandService.updateById(categoryBrand);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

    @DeleteMapping("/deleteById/{id}")
    public Result deleteById(@PathVariable Long id) {
        categoryBrandService.deleteById(id);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }


}
