package cn.tellsea.service;

import cn.tellsea.bean.Customer;

import java.util.List;

public interface CustomerService {
    int deleteByPrimaryKey(Long id);

    int insert(Customer record);

    int insertSelective(Customer record);

    Customer selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);

    List<Customer> list();
}
