package com.lab.epam.dao;

import com.lab.epam.entity.Order;
import com.lab.epam.entity.User;

import java.sql.SQLException;
import java.util.List;

public interface OrderDAO extends BaseDAO<Order> {
    public List<Order> getOrders(String login) throws SQLException;

    public List<Order> getConfirmedOrders() throws SQLException;

    public List<Order> getUserConfirmedOrders(String login) throws SQLException;
}
