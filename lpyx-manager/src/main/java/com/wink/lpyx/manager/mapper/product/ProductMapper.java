package com.wink.lpyx.manager.mapper.product;

import com.wink.lpyx.model.dto.product.ProductDto;
import com.wink.lpyx.model.entity.product.Product;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface ProductMapper {
    List<Product> findByPage(ProductDto productDto);

    void save(Product product);

    void deleteById(Long id);

    Product findById(Long id);
    

    void updateById(Product product);
}
