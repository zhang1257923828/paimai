package com.baizhi.dao;

import org.apache.ibatis.annotations.Param;

import com.baizhi.entity.User;

public interface UserDao {
	public User login(@Param("name") String name, @Param("password") String password);
	public void reg(User user);
}
