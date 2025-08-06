package com.wink.lpyx.model.entity.system;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.wink.lpyx.model.entity.base.BaseEntity;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.io.Serial;
import java.util.Date;

@Data
@Schema(description = "角色实体类")
public class SysRole extends BaseEntity {

    @Serial
    private static final long serialVersionUID = 1L;

    @Schema(description = "角色名称")
    private String roleName;

    @Schema(description = "角色编码")
    private String roleCode;

    @Schema(description = "描述")
    private String description;

    @Schema(description = "创建时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;

    @Schema(description = "更新时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date updateTime;


}
