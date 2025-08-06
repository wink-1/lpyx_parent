package com.wink.lpyx.manager.properties;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

@Data
@ConfigurationProperties(prefix = "lpyx.minio") //读取节点
public class MinioProperties {

    private String endpointUrl;
    private String accessKey;
    private String secretKey;
    private String bucketName;

}
