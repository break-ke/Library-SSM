package com.service.impl;

import com.dao.LoginDao;
import com.service.loginService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * @author WDD
 * @create 2020-04-13-15:40
 */
@Service("loginservice")
@Transactional
public class loginServiceImpl implements loginService {
    @Resource
    private LoginDao dao;
    @Override
    public boolean login(String name, String password) {
        return dao.login(name,password);
    }
}
