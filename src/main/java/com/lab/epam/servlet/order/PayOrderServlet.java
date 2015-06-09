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
 * Created by Dima on 30-May-15.
 */
public class PayOrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("../views/order/order.jsp").forward(request,
                response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String login = (String) session.getAttribute("login");
        OrderDAO orderDAO = new OrderDAOImpl();
        List<Order> orders = null;
        try {
            orders = orderDAO.getOrders(login);
            for (int i = 0; i < orders.size(); i++) {
                if(orders.get(i).getStatus().equals("prepared")){
                    orders.get(i).setStatus("paid");
                    orderDAO.update(orders.get(i), orders.get(i).getId());
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // request.setAttribute("order", orders);
        response.sendRedirect("order");

    }
}
