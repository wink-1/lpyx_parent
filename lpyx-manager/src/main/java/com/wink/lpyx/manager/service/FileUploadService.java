package com.wink.lpyx.manager.service;

import org.springframework.web.multipart.MultipartFile;

public interface FileUploadService {
    /**
     * 上传文件
     *
     * @param file
     * @return
     */
    String uploadFile(MultipartFile file);
}
