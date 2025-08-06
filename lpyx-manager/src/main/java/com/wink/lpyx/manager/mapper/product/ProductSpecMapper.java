package com.wink.lpyx.manager.mapper.product;

import com.wink.lpyx.model.entity.product.ProductSpec;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ProductSpecMapper {
    List<ProductSpec> findByPage();

    @Insert("insert into product_spec (spec_name, spec_value, create_time, update_time, is_deleted) values(#{specName},#{specValue},now(),now(),0)")
    void save(ProductSpec productSpec);

    void updateById(ProductSpec productSpec);

    @Delete("update  product_spec set is_deleted = 1 where id = #{id}")
    void deleteById(Long id);

    List<ProductSpec> findAll();
}
