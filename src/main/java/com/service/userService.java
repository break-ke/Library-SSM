package com.service;

import com.pojo.book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author WDD
 * @create 2020-04-13-14:28
 */
public interface userService {
    public List<book> getBook();
    public boolean uploadBook(book book);
    public boolean deleBook(@Param("uid") int id);
    public boolean  updateBook(book book);
}
