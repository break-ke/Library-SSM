package com.dao;

import com.pojo.book;
import org.apache.ibatis.annotations.Param;


import java.util.List;

/**
 * @author WDD
 * @create 2020-04-13-14:21
 */
public interface userDao {
    //查看所有书籍
    public List<book> getBook();
    //添加图书
    public boolean uploadBook(book book);
    //删除图书
    public boolean deleBook(@Param("uid") int id);
    //修改图书
    public boolean  updateBook(book book);
}
