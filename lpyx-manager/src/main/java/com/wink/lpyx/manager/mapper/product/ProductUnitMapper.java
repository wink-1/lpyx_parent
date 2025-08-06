package com.wink.lpyx.manager.mapper.product;

import com.wink.lpyx.model.entity.base.ProductUnit;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ProductUnitMapper {

    @Select("select * from product_unit where is_deleted = 0")
    List<ProductUnit> findAll();
}
