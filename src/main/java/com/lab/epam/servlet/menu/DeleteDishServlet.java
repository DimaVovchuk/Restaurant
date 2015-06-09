package com.lab.epam.servlet.menu;

import com.lab.epam.dao.DishDAO;
import com.lab.epam.dao.OrderDAO;
import com.lab.epam.dao.impl.DishDAOImpl;
import com.lab.epam.dao.impl.OrderDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by Dima on 29-May-15.
 */
public class DeleteDishServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DishDAO dao = new DishDAOImpl();
        Integer id = Integer.parseInt(request.getParameter("id"));
        try {
            dao.delete(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("menu");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("views/menu/menu.jsp").forward(request,
                response);
    }
}
