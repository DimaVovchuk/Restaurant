package com.lab.epam.servlet.logination;

import com.lab.epam.dao.LoginDAO;
import com.lab.epam.dao.impl.LoginDAOImpl;
import com.lab.epam.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {

        String login = request.getParameter("login");
        login = new String(login.getBytes("ISO-8859-1"), "cp1251");
        String password = request.getParameter("password");
        LoginDAO dao = new LoginDAOImpl();
        User user = null;
        if (password != null && login != null) {
            try {
                user = dao.getUser(login, password);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        HttpSession session = request.getSession();
        if (user != null) {
            session.setAttribute("login", login);
            session.setAttribute("flag", 1);
            if (user.getConfirm().equals("confirmed")) {
                session.setAttribute("conf", 1);
            }
            if (user.getRole().equals("admin")) {
                session.setAttribute("admin", 1);
                response.sendRedirect("");
            } else {
                if (user.getRole().equals("user")) {
                    session.setAttribute("admin", 2);
                    response.sendRedirect("");
                } else if (user.getRole().equals("kitchen")) {
                    session.setAttribute("admin", 3);
                    response.sendRedirect("");
                }
            }
        } else {
            session.setAttribute("flag", 2);
            session.setAttribute("error",
                    "Sorry, username or password is incorrect!");
            response.sendRedirect("");
        }
    }
}
