package com.lab.epam.dao.impl;

import com.lab.epam.dao.OrderDAO;
import com.lab.epam.dao.UserDAO;
import com.lab.epam.entity.Order;
import com.lab.epam.entity.User;
import com.lab.epam.persistant.ConnectionManager;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class OrderDAOImpl extends BaseDAOImpl<Order> implements OrderDAO {

    public OrderDAOImpl() {
        super(Order.class);
    }

    public List<Order> getOrders(String login) throws SQLException {
        Connection conn = ConnectionManager.getConnection().retrieve();
        UserDAO userDAO = new UserDAOImpl();
        User user = userDAO.findUser(login);
        ps = conn.prepareStatement("SELECT * FROM `order` WHERE user_id=" + user.getId());
        ResultSet res = ps.executeQuery();
        List<Order> list = transformer.rowToObject(res);
        ps.execute();
        ConnectionManager.getConnection().putback(conn);
        return list;
    }

    public List<Order> getConfirmedOrders() throws SQLException {
        Connection conn = ConnectionManager.getConnection().retrieve();
        ps = conn.prepareStatement("SELECT * FROM `order` WHERE status = 'confirmed'");
        ResultSet res = ps.executeQuery();
        List<Order> list = transformer.rowToObject(res);
        ConnectionManager.getConnection().putback(conn);
        return list;
    }

    public List<Order> getUserConfirmedOrders(String login) throws SQLException {
        Connection conn = ConnectionManager.getConnection().retrieve();
        UserDAO userDAO = new UserDAOImpl();
        User user = userDAO.findUser(login);
        ps = conn.prepareStatement("SELECT * FROM `order` WHERE (status = 'confirmed') AND (user_id = " + user.getId() + ")");
        ResultSet res = ps.executeQuery();
        List<Order> list = transformer.rowToObject(res);
        ConnectionManager.getConnection().putback(conn);
        return list;
    }

}
