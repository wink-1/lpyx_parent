package com.wink.lpyx.manager.controller;

import com.wink.lpyx.manager.service.FileUploadService;
import com.wink.lpyx.model.vo.common.Result;
import com.wink.lpyx.model.vo.common.ResultCodeEnum;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/admin/system")
public class FileUploadController {

    @Autowired
    private FileUploadService fileUploadService;

    public FileUploadController(FileUploadService fileUploadService) {
        this.fileUploadService = fileUploadService;
    }

    @Operation(summary = "头像上传方法")
    @PostMapping(value = "/fileUpload")
    public Result<String> fileUpload(@RequestParam(value = "file") MultipartFile multipartFile) {
        String fileUrl = fileUploadService.uploadFile(multipartFile);
        return Result.build(fileUrl, ResultCodeEnum.SUCCESS);
    }


}
