package com.lab.epam.servlet.sendMail;

import com.lab.epam.dao.UserDAO;
import com.lab.epam.dao.impl.UserDAOImpl;
import com.lab.epam.entity.User;
import com.lab.epam.smtp.SendEmail;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Dima on 31-May-15.
 */
public class SendMailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = (String) request.getParameter("name");
        String email = (String) request.getParameter("email");
        String subject = (String) request.getParameter("subject");
        String message = (String) request.getParameter("message");
        HttpSession session = request.getSession();
        String login = (String) session.getAttribute("login");
        String s = null;
        if (login != null) {
            UserDAO dao = new UserDAOImpl();
            User user = dao.findUser(login);
            s = "name - " + user.getName() + "\n" + "login - " + login + "\n" + "email - " + user.getEmail() + "\n" + message + "\n";
            s = new String(s.getBytes("ISO-8859-1"), "cp1251");
        }else{
            s = "name - " + name + "\n" + "login - " + login + "\n" + "email - " + email + "\n" + message + "\n";
            s = new String(s.getBytes("ISO-8859-1"), "cp1251");
        }
        subject = new String(subject.getBytes("ISO-8859-1"), "cp1251");
        SendEmail.sender(subject, s, "VovchukDima@gmail.com");
        session.setAttribute("sent", 1);
        response.sendRedirect("contacts");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
