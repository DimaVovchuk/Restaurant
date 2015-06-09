package com.lab.epam.servlet.order;

import com.lab.epam.dao.OrderDAO;
import com.lab.epam.dao.impl.OrderDAOImpl;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by Dima on 28-May-15.
 */
public class DeleteOrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderDAO dao = new OrderDAOImpl();
        Integer id = Integer.parseInt(request.getParameter("id"));
        try {
            dao.delete(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("order");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("views/orders/order.jsp").forward(request,
                response);
    }
}
