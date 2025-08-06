package com.wink.lpyx.manager.service.impl;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.CircleCaptcha;
import com.wink.lpyx.manager.service.ValidateCodeService;
import com.wink.lpyx.model.vo.system.ValidateCodeVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.UUID;
import java.util.concurrent.TimeUnit;

@Service
public class ValidateCodeServiceImpl implements ValidateCodeService {

    @Autowired
    private RedisTemplate<String, String> redisTemplate;

    //生成图片验证码
    @Override
    public ValidateCodeVo generateValidateCode() {
//        通过工具（hutool）生成验证码
        CircleCaptcha circleCaptcha = CaptchaUtil.createCircleCaptcha(150, 50, 4, 2);
        String code = circleCaptcha.getCode();
        String imageBase64 = circleCaptcha.getImageBase64();
//        把验证码存储到redis中，设置key：uuid和value：验证码值,设置过期时间
        String key = UUID.randomUUID().toString().replaceAll("-", "");
        redisTemplate.opsForValue().set("user:validate:" + key,
                code,
                5, TimeUnit.MINUTES);
//        返回ValidateCodeVo对象
        ValidateCodeVo validateCodeVo = new ValidateCodeVo();
        validateCodeVo.setCodeKey(key);
        validateCodeVo.setCodeValue("data:image/png;base64," + imageBase64);
        return validateCodeVo;
    }
}
