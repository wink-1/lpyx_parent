package com.wink.lpyx.manager.service.impl.product;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wink.lpyx.manager.mapper.product.CategoryBrandMapper;
import com.wink.lpyx.manager.service.CategoryBrandService;
import com.wink.lpyx.model.dto.product.CategoryBrandDto;
import com.wink.lpyx.model.entity.product.Brand;
import com.wink.lpyx.model.entity.product.CategoryBrand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryBrandServiceImpl implements CategoryBrandService {
    @Autowired
    private CategoryBrandMapper categoryBrandMapper;


    @Override
    public PageInfo<CategoryBrand> findByPage(Integer page, Integer limit, CategoryBrandDto categoryBrandDto) {
        PageHelper.startPage(page, limit);
        List<CategoryBrand> categoryBrands = categoryBrandMapper.findByPage(categoryBrandDto);
        return new PageInfo<>(categoryBrands);
    }

    @Override
    public void save(CategoryBrand categoryBrand) {
        categoryBrandMapper.save(categoryBrand);
    }

    @Override
    public void updateById(CategoryBrand categoryBrand) {
        categoryBrandMapper.updateById(categoryBrand);
    }

    @Override
    public void deleteById(Long id) {
        categoryBrandMapper.deleteById(id);
    }

    @Override
    public List<Brand> findBrandByCategoryId(Long categoryId) {
        return categoryBrandMapper.findBrandByCategoryId(categoryId);
    }
}
