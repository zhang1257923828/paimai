package com.baizhi.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baizhi.dao.UserDao;
import com.baizhi.entity.User;
import com.baizhi.service.UserService;
@Service
public class UserServiceImpl implements UserService {
@Autowired
private UserDao userDao;
	@Override
	public User login(String name, String password) {
		// TODO 自动生成的方法存根
		return userDao.login(name, password);
	}

	@Override
	public void reg(User user) {
		// TODO 自动生成的方法存根
		userDao.reg(user);
	}

}
