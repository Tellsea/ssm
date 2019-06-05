package cn.tellsea.bean;

import lombok.Data;

@Data
public class Customer {
    private Long id;

    private String name;

    private String phone;

    private String email;

    private String address;
}
