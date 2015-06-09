package com.lab.epam.filter;

import com.lab.epam.dao.UserDAO;
import com.lab.epam.dao.impl.UserDAOImpl;
import com.lab.epam.entity.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Dima on 30-May-15.
 */
public class KitchenFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession();

        if (session.getAttribute("login") != null) {
            UserDAO userDAO = new UserDAOImpl();
            User user = userDAO.findUser((String) session.getAttribute("login"));
            if (user.getRole().equals("kitchen")) {
                chain.doFilter(request, response);
            }
        } else {
            res.sendRedirect("");
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
