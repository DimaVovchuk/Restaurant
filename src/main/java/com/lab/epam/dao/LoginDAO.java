package com.lab.epam.dao;

import java.sql.SQLException;

import com.lab.epam.entity.User;

public interface LoginDAO {

	public User getUser(String login, String password) throws SQLException;
}
