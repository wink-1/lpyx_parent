package com.wink.lpyx.manager.service.impl;

import cn.hutool.core.date.DateUtil;
import com.wink.lpyx.manager.properties.MinioProperties;
import com.wink.lpyx.manager.service.FileUploadService;
import io.minio.BucketExistsArgs;
import io.minio.MakeBucketArgs;
import io.minio.MinioClient;
import io.minio.PutObjectArgs;
import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Positions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.UUID;

@Service
public class FileUploadServiceImpl implements FileUploadService {

    @Autowired
    private MinioProperties minioProperties;

    // 定义目标图片尺寸
    private static final int TARGET_WIDTH = 50;
    private static final int TARGET_HEIGHT = 50;

    @Override
    public String uploadFile(MultipartFile multipartFile) {
        try {
            // 创建一个Minio的客户端对象
            MinioClient minioClient = MinioClient.builder()
                    .endpoint(minioProperties.getEndpointUrl())
                    .credentials(minioProperties.getAccessKey(), minioProperties.getSecretKey())
                    .build();

            // 判断桶是否存在
            boolean found = minioClient.bucketExists(BucketExistsArgs.builder().bucket(minioProperties.getBucketName()).build());
            if (!found) {       // 如果不存在，那么此时就创建一个新的桶
                minioClient.makeBucket(MakeBucketArgs.builder().bucket(minioProperties.getBucketName()).build());
            }

            // 处理图片尺寸调整
            InputStream processedImageStream = resizeImage(multipartFile);
            long processedSize = processedImageStream.available();

            // 设置存储对象名称
            String dateDir = DateUtil.format(new Date(), "yyyyMMdd");
            // 生成一个唯一的文件名
            String uuid = UUID.randomUUID().toString().replace("-", "");
            //20230801/443e1e772bef482c95be28704bec58a901.jpg
            String fileName = dateDir + "/" + uuid + multipartFile.getOriginalFilename();

            PutObjectArgs putObjectArgs = PutObjectArgs.builder()
                    .bucket(minioProperties.getBucketName())
                    .stream(processedImageStream, processedSize, -1)
                    .object(fileName)
                    .build();
            minioClient.putObject(putObjectArgs);

            return minioProperties.getEndpointUrl() + "/" + minioProperties.getBucketName() + "/" + fileName;

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 将图片调整为指定尺寸
     *
     * @param multipartFile 原始图片文件
     * @return 调整后的图片输入流
     * @throws IOException IO异常
     */
    private InputStream resizeImage(MultipartFile multipartFile) throws IOException {
        String originalFilename = multipartFile.getOriginalFilename();
        String format = getImageFormat(originalFilename);
        
        // 使用 Thumbnailator 处理图片，支持更多格式包括 WebP
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        
        try {
            // 使用 Thumbnailator 进行图片处理
            Thumbnails.of(multipartFile.getInputStream())
                    .size(TARGET_WIDTH, TARGET_HEIGHT)
                    .keepAspectRatio(false) // 不保持宽高比，强制调整为 50x50
                    .outputFormat(format)
                    .outputQuality(0.9) // 设置输出质量
                    .toOutputStream(baos);
            
            return new ByteArrayInputStream(baos.toByteArray());
            
        } catch (Exception e) {
            // 如果 Thumbnailator 处理失败，尝试使用传统方法
            return fallbackResizeImage(multipartFile, format);
        }
    }

    /**
     * 备用图片处理方法（当 Thumbnailator 失败时使用）
     *
     * @param multipartFile 原始图片文件
     * @param format 目标格式
     * @return 调整后的图片输入流
     * @throws IOException IO异常
     */
    private InputStream fallbackResizeImage(MultipartFile multipartFile, String format) throws IOException {
        // 读取原始图片
        BufferedImage originalImage = ImageIO.read(multipartFile.getInputStream());

        if (originalImage == null) {
            throw new IOException("无法读取图片文件");
        }

        // 创建目标尺寸的图片
        BufferedImage resizedImage = new BufferedImage(TARGET_WIDTH, TARGET_HEIGHT, BufferedImage.TYPE_INT_RGB);

        // 创建图形上下文
        Graphics2D g2d = resizedImage.createGraphics();

        // 设置高质量渲染
        g2d.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BILINEAR);
        g2d.setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY);
        g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

        // 绘制调整后的图片
        g2d.drawImage(originalImage, 0, 0, TARGET_WIDTH, TARGET_HEIGHT, null);
        g2d.dispose();

        // 将调整后的图片转换为字节数组
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        
        // 对于 WebP 格式，转换为 JPEG 格式
        if ("webp".equals(format)) {
            format = "jpg";
        }
        
        ImageIO.write(resizedImage, format, baos);

        return new ByteArrayInputStream(baos.toByteArray());
    }

    /**
     * 根据文件名获取图片格式
     *
     * @param fileName 文件名
     * @return 图片格式
     */
    private String getImageFormat(String fileName) {
        if (fileName == null) {
            return "jpg"; // 默认格式
        }

        String extension = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();

        // 支持的图片格式
        return switch (extension) {
            case "png" -> "png";
            case "gif" -> "gif";
            case "bmp" -> "bmp";
            case "webp" -> "webp";
            default -> "jpg";
        };
    }
}