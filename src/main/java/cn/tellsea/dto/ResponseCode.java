package cn.tellsea.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ResponseCode {

    private Integer code;
    private String msg;
    private Object data;
}
