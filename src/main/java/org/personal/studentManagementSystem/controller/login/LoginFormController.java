package org.personal.studentManagementSystem.controller.login;

import org.personal.studentManagementSystem.dao.LoginDao;
import org.personal.studentManagementSystem.dao.impl.LoginDaoImpl;
import org.personal.studentManagementSystem.model.Login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name="LoginFormController" , urlPatterns = {"/login"})
public class LoginFormController extends HttpServlet {

    private final LoginDao loginDao = new LoginDaoImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/index.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName =req.getParameter("userName").trim();
        String password = req.getParameter("password").trim();

        Login login = new Login();
        login.setUserName(userName);
        login.setPassword(password);

        HttpSession session = req.getSession();
        Login user =loginDao.findOne(login);

        if(user!=null){
            session.setAttribute("firstName" , user.getFirstName());
            session.setAttribute("lastName" , user.getLastName());
            resp.sendRedirect("/StudentManagementSystem/dashboard");
        }else{
            req.setAttribute("error-message" , "Sorry this account is not registered");
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }
    }
}
