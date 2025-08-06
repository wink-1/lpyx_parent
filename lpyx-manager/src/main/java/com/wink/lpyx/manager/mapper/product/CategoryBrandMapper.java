package com.wink.lpyx.manager.mapper.product;

import com.wink.lpyx.model.dto.product.CategoryBrandDto;
import com.wink.lpyx.model.entity.product.Brand;
import com.wink.lpyx.model.entity.product.CategoryBrand;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CategoryBrandMapper {
    List<CategoryBrand> findByPage(CategoryBrandDto categoryBrandDto);

    void save(CategoryBrand categoryBrand);

    void updateById(CategoryBrand categoryBrand);

    void deleteById(Long id);

    List<Brand> findBrandByCategoryId(Long categoryId);
}
