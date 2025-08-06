package com.wink.lpyx.manager.service.impl.product;

import com.wink.lpyx.manager.mapper.product.ProductUnitMapper;
import com.wink.lpyx.model.entity.base.ProductUnit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductUnitServiceImpl {

    @Autowired
    private ProductUnitMapper productUnitMapper;

    public List<ProductUnit> findAll() {
        return productUnitMapper.findAll();
    }
}
