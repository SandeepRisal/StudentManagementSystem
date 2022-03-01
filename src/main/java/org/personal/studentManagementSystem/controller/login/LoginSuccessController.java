package org.personal.studentManagementSystem.controller.login;

import org.personal.studentManagementSystem.dao.LoginDao;
import org.personal.studentManagementSystem.dao.impl.LoginDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginSuccessController" , urlPatterns = {"/dashboard"})
public class LoginSuccessController extends HttpServlet {
    private final LoginDao loginDao = new LoginDaoImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/dashboard.jsp").forward(req,resp);
    }
}
