package com.lab.epam.dao;

import com.lab.epam.entity.User;

public interface UserDAO extends BaseDAO<User>{

	public User findUser(String login);
	public User findUser(int id);
	public User findUserByEmail(String email);
}
