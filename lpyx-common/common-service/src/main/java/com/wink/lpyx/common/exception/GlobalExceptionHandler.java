package com.wink.lpyx.common.exception;

import com.wink.lpyx.model.vo.common.Result;
import com.wink.lpyx.model.vo.common.ResultCodeEnum;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(value = Exception.class)
    @ResponseBody //返回json格式
    public Result error(Exception e) {
        e.printStackTrace();
        return Result.build(null, ResultCodeEnum.SYSTEM_ERROR);
    }

    //自定义异常
    @ExceptionHandler(value = CustomException.class)
    @ResponseBody //返回json格式
    public Result error(CustomException e) {
        return Result.build(null, e.getResultCodeEnum());
    }

}
