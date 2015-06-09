package com.lab.epam.servlet.user;

import com.lab.epam.dao.UserDAO;
import com.lab.epam.dao.impl.UserDAOImpl;
import com.lab.epam.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by Dima on 02-Jun-15.
 */
public class ConfirmRegistrationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String confirm = (String) request.getParameter("confirm");
        HttpSession session = request.getSession();
        String login = (String) session.getAttribute("login");
        UserDAO userDAO = new UserDAOImpl();
        User user = userDAO.findUser(login);
        if (user.getConfirm().equals(confirm)) {
            user.setConfirm("confirmed");
            session.setAttribute("conf", 1);
        }
        if (user.getRole().equals("admin")) {
            session.setAttribute("admin", 1);
        } else {
            if (user.getRole().equals("user")) {
                session.setAttribute("admin", 2);
            } else if (user.getRole().equals("kitchen")) {
                session.setAttribute("admin", 3);
            }
        }
        try {
            userDAO.update(user, user.getId());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
