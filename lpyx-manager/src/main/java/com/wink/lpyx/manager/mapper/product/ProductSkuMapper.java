package com.wink.lpyx.manager.mapper.product;

import com.wink.lpyx.model.entity.product.ProductSku;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ProductSkuMapper {
    void save(List<ProductSku> productSkuList);


    List<ProductSku> findByProductId(Long id);

    void updateById(ProductSku productSku);

    void deleteById(Long id);
}
