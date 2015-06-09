package com.lab.epam.servlet.user;

import com.lab.epam.dao.UserDAO;
import com.lab.epam.dao.impl.UserDAOImpl;
import com.lab.epam.entity.User;
import com.lab.epam.logger.MyLogger;
import com.lab.epam.md5.MD5Creator;
import com.lab.epam.smtp.SendEmail;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Random;

public class CreateUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public CreateUserServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("views/admin/user-create.jsp").forward(request,
                response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDAO dao = new UserDAOImpl();
        String name = (String) request.getParameter("name");
        name = new String(name.getBytes("ISO-8859-1"), "cp1251");
        String surname = (String) request.getParameter("surname");
        surname = new String(surname.getBytes("ISO-8859-1"), "cp1251");
        Integer phoneNumber = Integer.parseInt(request.getParameter("phoneNumber"));
        String password = (String) request.getParameter("password");
        String login = (String) request.getParameter("login");
        User checkLogin = dao.findUser(login);
        HttpSession session = request.getSession();
        session.setAttribute("login_conf",0);
        session.setAttribute("email_conf",0);
        if(checkLogin!=null){
            session.setAttribute("login_conf",1);
            response.sendRedirect("user-create");
            return;
        }
        login = new String(login.getBytes("ISO-8859-1"), "cp1251");
        String email = (String) request.getParameter("email");
        User userByEmail = dao.findUserByEmail(email);
        if(userByEmail!=null){
            session.setAttribute("email_conf",1);
            response.sendRedirect("user-create");
            return;
        }
        SendEmail sendEmail = new SendEmail();
        Random random = new Random();
        Integer confirm = random.nextInt();
        String confirmPass = MD5Creator.getMD5(confirm.toString());
        User user = new User(name, surname, password, login, phoneNumber, email,confirmPass);
        try {
            dao.insert(user);
        } catch (SQLException e) {
            e.printStackTrace();
            MyLogger.log.error(e);
            response.sendRedirect("create-user");
        }
        String message = "Hi. Congratulations, you have successfully registered to our site! For confirm, enter verification code: " + confirmPass;
        message = new String(message.getBytes("ISO-8859-1"), "cp1251");
        sendEmail.sender("Confirm your password", message, email);
        session.setAttribute("flag",1);
        session.setAttribute("login",login);
        response.sendRedirect("show-all");
    }

}
