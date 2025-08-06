package com.wink.lpyx.manager.service;

import com.wink.lpyx.model.entity.product.Category;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface CategoryService {

    List<Category> findByParentId(Long parentId);

    void exportData(HttpServletResponse response);

    void importData(MultipartFile file);
}
