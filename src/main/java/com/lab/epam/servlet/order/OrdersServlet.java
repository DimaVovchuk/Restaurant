package com.lab.epam.servlet.order;

import com.lab.epam.dao.DishDAO;
import com.lab.epam.dao.OrderDAO;
import com.lab.epam.dao.UserDAO;
import com.lab.epam.dao.impl.DishDAOImpl;
import com.lab.epam.dao.impl.OrderDAOImpl;
import com.lab.epam.dao.impl.UserDAOImpl;
import com.lab.epam.entity.Dish;
import com.lab.epam.entity.Order;
import com.lab.epam.entity.OrderShowTable;
import com.lab.epam.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.*;

/**
 * Created by Dima on 29-May-15.
 */
public class OrdersServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderDAO orderDAO = new OrderDAOImpl();
        List<Order> confirmedOrders = null;
        try {
            confirmedOrders = orderDAO.getConfirmedOrders();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        List<OrderShowTable> showTables = new ArrayList<>();
        DishDAO dishDAO = new DishDAOImpl();
        UserDAO userDAO = new UserDAOImpl();
        for (int i = 0; i < confirmedOrders.size(); i++) {
            Dish dishById = dishDAO.findDishById(confirmedOrders.get(i).getDishId());
            User user = userDAO.findUser(confirmedOrders.get(i).getUserId());
            OrderShowTable orderShowTable = new OrderShowTable(confirmedOrders.get(i).getCount(), dishById.getName(), user.getLogin(), confirmedOrders.get(i).getStatus());
            showTables.add(orderShowTable);
        }
        Set<String> set = new LinkedHashSet<>();
        for (int i = 0; i < showTables.size(); i++) {
            set.add(showTables.get(i).getUserLogin());
        }
        request.setAttribute("loginSet", set);
        request.setAttribute("showOrders", showTables);
        request.getRequestDispatcher("views/orders/orders.jsp").forward(request,
                response);
    }
}
