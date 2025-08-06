package com.wink.lpyx.manager.service;

import com.github.pagehelper.PageInfo;
import com.wink.lpyx.model.entity.product.Brand;

import java.util.List;

public interface BrandService {
    PageInfo<Brand> findByPage(Integer page, Integer limit);

    void deleteById(Long id);

    void update(Brand brand);

    void save(Brand brand);

    List<Brand> findAll();
}
