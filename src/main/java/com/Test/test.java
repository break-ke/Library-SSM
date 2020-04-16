package com.Test;

import com.pojo.book;
import com.service.userService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * @author WDD
 * @create 2020-04-13-14:30
 */
public class test {
    public static void main(String[] args) {
        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        userService service = (userService) ac.getBean("userservice");
        List<book> list = service.getBook();
        System.out.println(list.size());
        System.out.println("哈哈哈哈哈");
        for (book book : list) {
            System.out.println("书名:"+book.getName());
            System.out.println("作者:"+book.getAuthor());
            System.out.println("出版社:"+book.getPublish());
            System.out.println("页数:"+book.getPage());
            System.out.println("价格:"+book.getPrice());
            System.out.println("简介:"+book.getContent());
            System.out.println("---------------------------------");
        }
    }
}
