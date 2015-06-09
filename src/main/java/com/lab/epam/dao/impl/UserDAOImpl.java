package com.lab.epam.dao.impl;

import com.lab.epam.dao.UserDAO;
import com.lab.epam.entity.User;
import com.lab.epam.logger.MyLogger;
import com.lab.epam.persistant.ConnectionManager;
import com.lab.epam.transformer.Transformer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class UserDAOImpl extends BaseDAOImpl<User> implements UserDAO {

    public UserDAOImpl() {
        super(User.class);
    }

    public User findUser(String login) {
        List<User> row = null;
        Transformer<User> transformer = new Transformer<User>(User.class);
        try {
            Connection conn = ConnectionManager.getConnection().retrieve();
            ps = conn
                    .prepareStatement("select * from users where login=?");
            ps.setString(1, login);
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            ConnectionManager.getConnection().putback(conn);
            row = transformer.rowToObject(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
            MyLogger.log.error(e);
        }
        if (row.isEmpty()) {
            return null;
        } else {
            return row.get(0);
        }
    }

    public User findUserByEmail(String email) {
        List<User> row = null;
        Transformer<User> transformer = new Transformer<User>(User.class);
        try {
            Connection conn = ConnectionManager.getConnection().retrieve();
            ps = conn
                    .prepareStatement("select * from users where email=?");
            ps.setString(1, email);
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            ConnectionManager.getConnection().putback(conn);
            row = transformer.rowToObject(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
            MyLogger.log.error(e);
        }
        if (row.isEmpty()) {
            return null;
        } else {
            return row.get(0);
        }
    }

    public User findUser(int id) {
        List<User> row = null;
        Transformer<User> transformer = new Transformer<User>(User.class);
        try {
            Connection conn = ConnectionManager.getConnection().retrieve();
            ps = conn
                    .prepareStatement("select * from users where id=?");
            ps.setInt(1, id);
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            ConnectionManager.getConnection().putback(conn);
            ;
            row = transformer.rowToObject(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
            MyLogger.log.error(e);
        }
        if (row.isEmpty()) {
            return null;
        } else {
            return row.get(0);
        }
    }

}
