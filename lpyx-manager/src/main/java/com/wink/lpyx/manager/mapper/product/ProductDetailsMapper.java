package com.wink.lpyx.manager.mapper.product;

import com.wink.lpyx.model.entity.product.ProductDetails;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductDetailsMapper {
    void save(ProductDetails productDetails);


    ProductDetails findById(Long id);

    void updateById(ProductDetails productDetails);

    void deleteById(Long id);
}
