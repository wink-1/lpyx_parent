package com.wink.lpyx.manager.controller.product;


import com.github.pagehelper.PageInfo;
import com.wink.lpyx.manager.service.ProductService;
import com.wink.lpyx.model.dto.product.ProductDto;
import com.wink.lpyx.model.entity.product.Product;
import com.wink.lpyx.model.vo.common.Result;
import com.wink.lpyx.model.vo.common.ResultCodeEnum;
import io.swagger.v3.oas.annotations.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/admin/product/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    // 商品列表
    @GetMapping("/findByPage/{page}/{limit}")
    public Result findByPage(@PathVariable("page") Integer page, @PathVariable("limit") Integer limit, ProductDto productDto) {
        PageInfo<Product> list = productService.findByPage(page, limit, productDto);
        return Result.build(list, ResultCodeEnum.SUCCESS);
    }

    @GetMapping("/findById/{id}")
    public Result findById(@PathVariable("id") Long id) {
        Product product = productService.findById(id);
        return Result.build(product, ResultCodeEnum.SUCCESS);
    }

    @PostMapping("/save")
    public Result save(@RequestBody Product product) {
        productService.save(product);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

    @DeleteMapping("/deleteById/{id}")
    public Result deleteById(@PathVariable("id") Long id) {
        productService.deleteById(id);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

    @PutMapping("/updateById")
    public Result updateById(@Parameter(name = "product", description = "请求参数实体类", required = true) @RequestBody Product product) {
        productService.updateById(product);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

    @GetMapping("/updateAuditStatus/{id}/{auditStatus}")
    public Result updateAuditStatus(@PathVariable Long id, @PathVariable Integer auditStatus) {
        productService.updateAuditStatus(id, auditStatus);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }

    @GetMapping("/updateStatus/{id}/{status}")
    public Result updateStatus(@PathVariable Long id, @PathVariable Integer status) {
        productService.updateStatus(id, status);
        return Result.build(null, ResultCodeEnum.SUCCESS);
    }


}
