package com.service.impl;

import com.dao.userDao;
import com.pojo.book;
import com.service.userService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.naming.Name;
import java.util.List;

/**
 * @author WDD
 * @create 2020-04-13-14:28
 */
@Service("userservice")
@Transactional
public class userServiceImpl implements userService {
    @Resource
    private userDao dao;
    @Override
    public List<book> getBook() {
        return dao.getBook();
    }

    @Override
    public boolean uploadBook(book book) {
        return dao.uploadBook(book);
    }

    @Override
    public boolean deleBook(int id) {
        return dao.deleBook(id);
    }

    @Override
    public boolean updateBook(book book) {
        return dao.updateBook(book);
    }
}
