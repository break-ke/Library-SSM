package com.contranal;

import com.pojo.book;
import com.service.loginService;
import com.service.userService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author WDD
 * @create 2020-04-13-15:50
 */
@Controller
public class loginController {
    @Resource(name="loginservice")
    private loginService lgservice;

    @Resource(name="userservice")
    private userService uservice;

    /**
     * 登录和显示
     * @param name
     * @param password
     * @return
     */
    @RequestMapping(value = "/login")
    public ModelAndView login(@RequestParam("name") String name,@RequestParam("password") String password){
        System.out.println(name);
        System.out.println(password);
        ModelAndView m= new ModelAndView();
        boolean falg= lgservice.login(name,password);
        List<book> list = uservice.getBook();
        for (book book : list) {
            System.out.println(book.getName());
        }
        if(falg){
            System.out.println("登录成功");
            m.addObject("list",list);
            m.setViewName("list");
        }
        return m;
    }
    /**
     * 添加
     *
     */
    //跳转
    @RequestMapping(value = "/adduser")
    public String tiaoz(){
        return "fabu";
    }
    @RequestMapping(value = "/addBook")
    public ModelAndView addbook(book book){
        System.out.println(book.getName());
       boolean falg =  uservice.uploadBook(book);
        List <book> list = uservice.getBook();
       ModelAndView m = new ModelAndView();
       if(falg){
           System.out.println("添加成功");
           m.addObject("list",list);
           m.setViewName("list");
       }
       return m;
    }

    /**
     * 删除
     *
     */
    @RequestMapping(value = "/dele")
    public ModelAndView delebook(@RequestParam("uid") int id){
        boolean falgg = uservice.deleBook(id);
        List<book> list = uservice.getBook();
        ModelAndView m=  new ModelAndView();
        if(falgg){
            System.out.println("删除成功");
            m.addObject("list",list);
            m.setViewName("list");
        }
        return m;
    }
    /**
     * 修改
     *
     */
    //跳转
    @RequestMapping(value = "/Xiugai")
    public String xiugai(){
        return "Xiugai";
    }
    @RequestMapping(value = "/update")
    public ModelAndView updatebook(book book){
        boolean falg = uservice.updateBook(book);
       List<book> list =  uservice.getBook();
       ModelAndView m = new ModelAndView();
       if(falg){
           System.out.println("修改成功");
           m.addObject("list",list);
           m.setViewName("list");
       }
       return m;
    }

}
