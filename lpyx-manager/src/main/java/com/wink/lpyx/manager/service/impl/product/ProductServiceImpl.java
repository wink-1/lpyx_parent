package com.wink.lpyx.manager.service.impl.product;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wink.lpyx.manager.mapper.product.ProductDetailsMapper;
import com.wink.lpyx.manager.mapper.product.ProductMapper;
import com.wink.lpyx.manager.mapper.product.ProductSkuMapper;
import com.wink.lpyx.manager.service.ProductService;
import com.wink.lpyx.model.dto.product.ProductDto;
import com.wink.lpyx.model.entity.product.Product;
import com.wink.lpyx.model.entity.product.ProductDetails;
import com.wink.lpyx.model.entity.product.ProductSku;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductMapper productMapper;

    @Autowired
    private ProductSkuMapper productSkuMapper;

    @Autowired
    private ProductDetailsMapper productDetailsMapper;

    @Override
    public PageInfo<Product> findByPage(Integer page, Integer limit, ProductDto productDto) {
        PageHelper.startPage(page, limit);
        List<Product> products = productMapper.findByPage(productDto);
        return new PageInfo<>(products);
    }

    @Override
    @Transactional
    public void save(Product product) {
        //保存商品基本信息，product表
        product.setStatus(0);              // 设置上架状态为0
        product.setAuditStatus(0);         // 设置审核状态为0
        productMapper.save(product);

        //获取商品sku列表集合，保存sku信息，product_sku表
        List<ProductSku> productSkuList = product.getProductSkuList();
        for (ProductSku productSku : productSkuList) {
            productSku.setSkuCode(product.getId() + "_" + productSku.getId());
            productSku.setProductId(product.getId());
            productSku.setSkuName(product.getName() + productSku.getSkuSpec());
            productSku.setSaleNum(0);                               // 设置销量
            productSku.setStatus(0);
        }

        productSkuMapper.save(productSkuList);

        //保存商品详情信息，product_details表
        ProductDetails productDetails = new ProductDetails();
        productDetails.setProductId(product.getId());
        productDetails.setImageUrls(product.getDetailsImageUrls());
        productDetailsMapper.save(productDetails);

    }

    @Override
    @Transactional
    public void deleteById(Long id) {
        productMapper.deleteById(id);
        productSkuMapper.deleteById(id);
        productDetailsMapper.deleteById(id);
    }


    @Override
    @Transactional
    public Product findById(Long id) {
        //根据id查询商品的基本信息 product
        Product product = productMapper.findById(id);
        //根据id查询商品sku信息列表 product_sku
        List<ProductSku> productSkuList = productSkuMapper.findByProductId(id);
        product.setProductSkuList(productSkuList);
        //根据id查询商品详情信息 product_details
        ProductDetails productDetails = productDetailsMapper.findById(id);
        product.setDetailsImageUrls(productDetails.getImageUrls());
        return product;
    }

    @Override
    @Transactional
    public void updateById(Product product) {
        // 修改商品基本数据
        productMapper.updateById(product);

        // 修改商品的sku数据
        List<ProductSku> productSkuList = product.getProductSkuList();
        productSkuList.forEach(productSku -> {
            productSkuMapper.updateById(productSku);
        });

        // 修改商品的详情数据
        ProductDetails productDetails = productDetailsMapper.findById(product.getId());
        productDetails.setImageUrls(product.getDetailsImageUrls());
        productDetailsMapper.updateById(productDetails);
    }

    @Override
    public void updateAuditStatus(Long id, Integer auditStatus) {
        Product product = new Product();
        product.setId(id);
        if (auditStatus == 1) {
            product.setAuditStatus(1);
            product.setAuditMessage("审批通过");
        } else {
            product.setAuditStatus(-1);
            product.setAuditMessage("审批不通过");
        }
        productMapper.updateById(product);

    }

    @Override
    public void updateStatus(Long id, Integer status) {
        Product product = new Product();
        product.setId(id);
        if (status == 1) {
            product.setStatus(1);
        } else {
            product.setStatus(-1);
        }
        productMapper.updateById(product);
    }
}
