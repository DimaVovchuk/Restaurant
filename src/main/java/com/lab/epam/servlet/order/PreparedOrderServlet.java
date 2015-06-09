package com.lab.epam.servlet.order;

import com.lab.epam.dao.OrderDAO;
import com.lab.epam.dao.impl.OrderDAOImpl;
import com.lab.epam.entity.Order;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by Dima on 29-May-15.
 */
public class PreparedOrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("getLogin");
        OrderDAO orderDAO = new OrderDAOImpl();
        List<Order> orders = null;
        try {
            orders = orderDAO.getOrders(login);
            for (int i = 0; i < orders.size(); i++) {
                if (orders.get(i).getStatus().equals("confirmed")) {
                    orders.get(i).setStatus("prepared");
                    orderDAO.update(orders.get(i), orders.get(i).getId());
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // request.setAttribute("order", orders);
        response.sendRedirect("orders");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("../views/order/orders.jsp").forward(request,
                response);
    }
}
