package com.wink.lpyx.manager.mapper.product;

import com.wink.lpyx.model.entity.product.Brand;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BrandMapper {


    List<Brand> findByPage();

    void deleteById(Long id);

    void update(Brand brand);

    void save(Brand brand);

    Brand findByName(String name);

    List<Brand> findAll();
}
