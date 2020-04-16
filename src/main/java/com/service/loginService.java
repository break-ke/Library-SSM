package com.service;

import org.apache.ibatis.annotations.Param;

/**
 * @author WDD
 * @create 2020-04-13-15:38
 */
public interface loginService {
    public boolean login(@Param("name")String name, @Param("password")String password);
}
