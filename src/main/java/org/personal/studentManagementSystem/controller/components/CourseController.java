package org.personal.studentManagementSystem.controller.components;

import org.personal.studentManagementSystem.dao.CourseDao;
import org.personal.studentManagementSystem.dao.ProgrammeDao;
import org.personal.studentManagementSystem.dao.impl.CourseDaoImpl;
import org.personal.studentManagementSystem.dao.impl.ProgrammeDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "CourseController", urlPatterns = {"/courses"})
public class CourseController extends HttpServlet {
    private final CourseDao courseDao = new CourseDaoImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            req.setAttribute("courses" , courseDao.findAll());
            req.getRequestDispatcher("components/courses.jsp").forward(req,resp);

        }catch(ClassNotFoundException | SQLException ex){
            System.out.println(ex.getMessage());
        }
    }
}
