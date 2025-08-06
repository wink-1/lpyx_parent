package com.wink.lpyx.manager.service;

import com.github.pagehelper.PageInfo;
import com.wink.lpyx.model.entity.product.ProductSpec;

import java.util.List;

public interface ProductSpecService {
    PageInfo<ProductSpec> findByPage(Integer page, Integer limit);

    void save(ProductSpec productSpec);

    void updateById(ProductSpec productSpec);

    void deleteById(Long id);

    List<ProductSpec> findAll();
}
