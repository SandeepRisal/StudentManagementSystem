package org.personal.studentManagementSystem.controller.login;

import org.personal.studentManagementSystem.dao.StudentDao;
import org.personal.studentManagementSystem.dao.impl.StudentDaoImpl;
import org.personal.studentManagementSystem.model.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "LoginSuccessController" , urlPatterns = {"/dashboard"})
public class LoginSuccessController extends HttpServlet {
    private final StudentDao studentDao = new StudentDaoImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            List<Student> student = studentDao.findAll();
            req.setAttribute("students" , studentDao.findAll());
            req.getRequestDispatcher("/dashboard.jsp").forward(req,resp);
        }catch(ClassNotFoundException | SQLException ex){
            System.out.println(ex.getMessage());
        }
    }
}
