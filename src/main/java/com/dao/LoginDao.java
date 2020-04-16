package com.dao;

import org.apache.ibatis.annotations.Param;

/**
 * @author WDD
 * @create 2020-04-13-15:11
 */
public interface LoginDao {
    //用户登录
    public boolean login(@Param("name")String name,@Param("password")String password);
}
