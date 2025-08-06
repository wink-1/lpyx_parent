package com.wink.lpyx.common.exception;

import com.wink.lpyx.model.vo.common.ResultCodeEnum;
import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@Data
public class CustomException extends RuntimeException {

    private Integer code;
    private String msg;
    private ResultCodeEnum resultCodeEnum;

    public CustomException(ResultCodeEnum resultCodeEnum) {
        this.code = resultCodeEnum.getCode();
        this.msg = resultCodeEnum.getMessage();
        this.resultCodeEnum = resultCodeEnum;
    }

    public CustomException(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }
}
