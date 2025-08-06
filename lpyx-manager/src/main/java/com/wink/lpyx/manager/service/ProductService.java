package com.wink.lpyx.manager.service;

import com.github.pagehelper.PageInfo;
import com.wink.lpyx.model.dto.product.ProductDto;
import com.wink.lpyx.model.entity.product.Product;

public interface ProductService {
    PageInfo<Product> findByPage(Integer page, Integer limit, ProductDto productDto);

    void save(Product product);

    void deleteById(Long id);

    Product findById(Long id);

    void updateById(Product product);

    void updateAuditStatus(Long id, Integer auditStatus);

    void updateStatus(Long id, Integer status);
}
