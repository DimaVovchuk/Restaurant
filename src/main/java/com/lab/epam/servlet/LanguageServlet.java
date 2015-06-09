package com.lab.epam.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;

/**
 * Created by Dima on 01-Jun-15.
 */
public class LanguageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String language = request.getParameter("lang");
        Locale locale = new Locale(language);
        HttpSession session = request.getSession();
        ResourceBundle bundle = ResourceBundle.getBundle("l18n/bundle", locale);
        session.setAttribute("bundle", bundle);
        Cookie cookie = new Cookie("lang", language);
        response.addCookie(cookie);
        response.sendRedirect("");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
