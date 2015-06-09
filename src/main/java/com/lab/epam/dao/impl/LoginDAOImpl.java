package com.lab.epam.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.lab.epam.dao.LoginDAO;
import com.lab.epam.entity.User;
import com.lab.epam.logger.MyLogger;
import com.lab.epam.md5.MD5Creator;
import com.lab.epam.persistant.ConnectionManager;
import com.lab.epam.transformer.Transformer;

public class LoginDAOImpl implements LoginDAO {

	PreparedStatement ps;

	@Override
	public User getUser(String login, String password) {
		List<User> row = null;
		Transformer<User> transformer = new Transformer<User>(User.class);
		try {
			Connection conn = ConnectionManager.getConnection().retrieve();
			ps = conn
					.prepareStatement("select * from users where login=? and password=?");
			ps.setString(1, login);
			ps.setString(2, MD5Creator.getMD5(password+login));
			ps.execute();
			ResultSet resultSet = ps.getResultSet();
			ConnectionManager.getConnection().putback(conn);;
			row = transformer.rowToObject(resultSet);
		} catch (SQLException e) {
			e.printStackTrace();
			MyLogger.log.error(e);
		}
		if(row.isEmpty()){
			return null;
		}else{
			return row.get(0);
		}
	}


}
