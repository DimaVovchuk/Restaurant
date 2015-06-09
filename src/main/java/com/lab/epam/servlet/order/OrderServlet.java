package com.lab.epam.servlet.order;

import com.lab.epam.dao.DishDAO;
import com.lab.epam.dao.OrderDAO;
import com.lab.epam.dao.impl.DishDAOImpl;
import com.lab.epam.dao.impl.OrderDAOImpl;
import com.lab.epam.entity.Dish;
import com.lab.epam.entity.Order;
import com.lab.epam.entity.OrderShowTable;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class OrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderDAO dao = new OrderDAOImpl();
        List<Order> all = null;
        List<OrderShowTable> show = new ArrayList<>();
        DishDAO dishDAO = new DishDAOImpl();
        HttpSession session = request.getSession();
        try {
            all = dao.getOrders((String) session.getAttribute("login"));
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
        double sum = 0;
        for (int i = 0; i < all.size(); i++) {
            Dish dishById = dishDAO.findDishById(all.get(i).getDishId());
            OrderShowTable orderShowTable = new OrderShowTable(all.get(i).getId(), all.get(i).getCount(), all.get(i).getSum(), dishById.getName(), all.get(i).getStatus());
            show.add(orderShowTable);
            if (!all.get(i).getStatus().equals("paid")) {
                sum += all.get(i).getSum();
            }
        }
        List<Order> confirmedOrders = null;
        String status = "";
        int added = 0;
        int confirmed = 0;
        int prepared = 0;
        for (Order order : all) {
            if (order.getStatus().equals("added")) {
                added++;
            }
            if (order.getStatus().equals("confirmed")) {
                confirmed++;
            }
            if (order.getStatus().equals("prepared")) {
                prepared++;
            }
        }
        if (added > 0) {
            confirmed = 0;
            prepared = 0;
            request.setAttribute("added", 1);
        }
        if (confirmed > 0) {
            added = 0;
            prepared = 0;
            request.setAttribute("confirmed", 1);
        }
        if (prepared > 0) {
            added = 0;
            confirmed = 0;
            request.setAttribute("prepared", 1);
        }

        DecimalFormat df = new DecimalFormat("#.##");
        session.setAttribute("sum", Double.valueOf(df.format(sum)));
        session.setAttribute("orders", show);
        request.getRequestDispatcher("views/orders/order.jsp").forward(request,
                response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

}
