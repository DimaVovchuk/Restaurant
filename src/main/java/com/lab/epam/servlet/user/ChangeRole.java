package com.lab.epam.servlet.user;

import com.lab.epam.dao.UserDAO;
import com.lab.epam.dao.impl.UserDAOImpl;
import com.lab.epam.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Servlet implementation class ChangeRole
 */
public class ChangeRole extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ChangeRole() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		UserDAO dao = new UserDAOImpl();
		String login = (String) request.getParameter("login");
		String role = (String) request.getParameter("role");
		User user = dao.findUser(login);
		user.setRole(role);
		try {
			dao.update(user, user.getId());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("show-all");
	}

}
