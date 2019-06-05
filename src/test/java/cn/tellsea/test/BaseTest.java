package cn.tellsea.test;

import cn.tellsea.bean.Customer;
import cn.tellsea.service.CustomerService;
import cn.tellsea.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.*;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class BaseTest {

    @Autowired
    private UserService userService;
    @Autowired
    private CustomerService customerService;

    @Test
    public void test() {
        System.out.println(userService);
    }

    @Test
    public void get() {
        PageHelper.startPage(1, 5);
        List<Customer> list = customerService.list();
        PageInfo<Customer> pageInfo = new PageInfo<>(list);
        System.out.println(pageInfo);
    }
}
