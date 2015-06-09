package com.lab.epam.servlet.user;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.lab.epam.dao.UserDAO;
import com.lab.epam.dao.impl.UserDAOImpl;

/**
 * Servlet implementation class DeleteUserServlet
 */
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteUserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("views/admin/show-all.jsp").forward(request,
				response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		UserDAO dao = new UserDAOImpl();
		String login = request.getParameter("login");
		Integer id = Integer.parseInt(request.getParameter("id"));
		try {
			dao.delete(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("show-all");
	}

}
