# SSM 客户管理系统

采用的主要框架为：Spring + SpringMVC + Mybatis + Bootstrap。

SSM 客户管理系统是基于 SSM 搭建的客户管理系统，其中为了便于新手学习，采用了jsp页面，bootstrap作为基础，pagehelp作为分页插件，这样能使大家更容易的掌握。

### 依赖

| 依赖| 版本 |
|:--|:--|
| Spring | 5.0.2.RELEASE |
| Spring MVC | 5.0.2.RELEASE |
| Mybatis | 3.4.5 |
| PageHelp 分页插件 | 5.1.4 |
| Druid 数据源 | 1.1.16 |
| Lombok 插件 | 1.18.8 |
| Mybatis 逆向工程| 1.3.7 |

#  表设计
### 用户表

这里为了简洁，用户模块只设计了账号和密码，主要用于登录，当然，你可以多增加一些属性，作为后期的用户信息的维护。

```sql
CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
```

### 客户表

相关的客户信息，同样的可以自己增加，这里我就不再阐述。

```sql
CREATE TABLE `tb_customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
```

# 插件
### 逆向工程

用于快速生成开发中不断重复的代码，比如说实体类，映射层接口，以及Mybatis XML文件的编写，只需要提供数据库连接的jar地址，数据库名称，账号密码即可一键生成：实体类，Mapper接口，Mapper映射文件。

例如生成的映射文件：![在这里插入图片描述](https://img-blog.csdnimg.cn/20190605161602696.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM4NzYyMjM3,size_16,color_FFFFFF,t_70)
其中已经帮我们生成了基本的增加、删除、更新方法。

|方法名称| 方法作用 | 方法说明 |
|:--|:--|:--|
| selectByPrimaryKey | 根据主键查询 | 主键是必须的参数 |
| deleteByPrimaryKey | 根据主键删除 | 主键是必须的参数 |
| insert | 插入一条数据，| **除了id之外，必须要有每个字段值** |
| insertSelective | 插入一条数据 | **只会插入不为空的字段** |
| updateByPrimaryKeySelective | 根据主键更新数据 | **更新的是传入参数不为空的字段** |
| updateByPrimaryKey | 根据主键更新数据 | **更新所有字段** | 

### Lombok 插件

lombok 提供了简单的注解的形式来帮助我们简化消除一些必须有但显得很臃肿的 java 代码。通过使用对应的注解，可以在编译源码的时候生成对应的方法，所以不会影响任何运行效率。

下面是简单的举例说明：
```java
import lombok.Data;

@Data // 这个注解已经提供了get，set方法
public class Customer {
    private Long id;

    private String name;

    private String phone;

    private String email;

    private String address;
}
```

**常用Lombok注解**

|注解名称| 注解使用位置以及作用 |
|:--|:--|
| @Data |  注解在类上；提供类所有属性的 getting 和 setting 方法，此外还提供了equals、canEqual、hashCode、toString 方法 |
| @Setter |  注解在属性上；为属性提供 setting 方法 |
| @Setter |  注解在属性上；为属性提供 getting 方法 |
| @Log4j | 注解在类上；为类提供一个 属性名为log 的 log4j 日志对象 |
| @NoArgsConstructor | 注解在类上；为类提供一个无参的构造方法 |
| @AllArgsConstructor  | 注解在类上；为类提供一个全参的构造方法 |
| @Cleanup  | 可以关闭流 |
| @Builder  | 被注解的类加个构造者模式 |
| @Synchronized  | 加个同步锁 |
| @SneakyThrows  | 等同于try/catch 捕获异常 |
| @NonNull  | 如果给参数加个这个注解 参数为null会抛出空指针异常 |
| @Value  | 注解和@Data类似，区别在于它会把所有成员变量默认定义为private final修饰，并且不会生成set方法 |

# 项目预览


交流学习
QQ群：957406675 Tellsea's blog
