package com.lab.epam.servlet.menu;

import com.lab.epam.dao.DishDAO;
import com.lab.epam.dao.impl.DishDAOImpl;
import com.lab.epam.entity.Dish;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Servlet implementation class AddDishServlet
 */
public class AddDishServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDishServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=windows-1251");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DishDAO dao = new DishDAOImpl();
		String name = (String) request.getParameter("name");
		name = new String(name.getBytes("ISO-8859-1"), "cp1251");
		String description = (String) request.getParameter("description");
		description = new String(description.getBytes("ISO-8859-1"), "cp1251");
		Double price = Double.parseDouble(request.getParameter("price"));
		String type = (String) request.getParameter("type");
		Dish dish = new Dish(name, description, price, type);
		try {
			dao.insert(dish);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("menu");
	}

}
