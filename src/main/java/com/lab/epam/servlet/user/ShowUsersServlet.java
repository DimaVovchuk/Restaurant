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
import java.util.List;

public class ShowUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ShowUsersServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		UserDAO dao = new UserDAOImpl();
		List<User> all = null;
		try {
			all = dao.getAll();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		request.setAttribute("users", all);
		request.getRequestDispatcher("views/admin/show-all.jsp").forward(request,
				response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

}
