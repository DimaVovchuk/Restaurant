package com.lab.epam.servlet.order;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lab.epam.dao.DishDAO;
import com.lab.epam.dao.OrderDAO;
import com.lab.epam.dao.UserDAO;
import com.lab.epam.dao.impl.DishDAOImpl;
import com.lab.epam.dao.impl.OrderDAOImpl;
import com.lab.epam.dao.impl.UserDAOImpl;
import com.lab.epam.entity.Dish;
import com.lab.epam.entity.Order;
import com.lab.epam.entity.User;


public class MakeOrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public MakeOrderServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("../views/menu/menu.jsp").forward(request,
                response);
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        OrderDAO orderDAO = new OrderDAOImpl();
        HttpSession session = request.getSession();
        String login = (String) session.getAttribute("login");
        String[] counts = request.getParameterValues("count");
        String[] names = request.getParameterValues("name");
        UserDAO userDAO = new UserDAOImpl();
        DishDAO dishDAO = new DishDAOImpl();
        DecimalFormat df = new DecimalFormat("#.##");
        User findUser = userDAO.findUser(login);
        for (int i = 0; i < names.length; i++) {
            if (Integer.parseInt(counts[i]) <= 0) {
                continue;
            }
            Dish findDish = dishDAO.findDishByName(names[i]);
            Double sum = findDish.getPrice() * Integer.parseInt(counts[i]);
            Order order = new Order(findDish.getId(), findUser.getId(), Integer.parseInt(counts[i]), Double.valueOf(df.format(sum)));
            try {
                orderDAO.insert(order);
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        response.sendRedirect("order");
    }

}
