package com.wink.lpyx.manager.service.impl.product;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wink.lpyx.common.exception.CustomException;
import com.wink.lpyx.manager.mapper.product.BrandMapper;
import com.wink.lpyx.manager.service.BrandService;
import com.wink.lpyx.model.entity.product.Brand;
import com.wink.lpyx.model.vo.common.ResultCodeEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BrandServiceImpl implements BrandService {
    @Autowired
    private BrandMapper brandMapper;

    @Override
    public PageInfo<Brand> findByPage(Integer page, Integer limit) {
        PageHelper.startPage(page, limit);
        List<Brand> brandList = brandMapper.findByPage();
        return new PageInfo(brandList);
    }

    @Override
    public void deleteById(Long id) {
        brandMapper.deleteById(id);
    }

    @Override
    public void update(Brand brand) {
        brandMapper.update(brand);
    }

    @Override
    public void save(Brand brand) {
        //判断品牌名称是否重复
        Brand dbbrand = brandMapper.findByName(brand.getName());
        if (dbbrand != null) {
            throw new CustomException(ResultCodeEnum.BRAND_NAME_IS_EXISTS);
        }
        brandMapper.save(brand);
    }

    @Override
    public List<Brand> findAll() {
        return brandMapper.findAll();
    }
}
