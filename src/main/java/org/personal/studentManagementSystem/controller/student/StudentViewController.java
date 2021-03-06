package org.personal.studentManagementSystem.controller.student;

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

@WebServlet(name = "StudentViewController", urlPatterns = {"/students/student"})
public class StudentViewController extends HttpServlet {
    private final StudentDao studentDao = new StudentDaoImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String student_id = req.getParameter("student_id");
        try{
            if(student_id !=null){
                int result = studentDao.delete(Integer.parseInt(student_id));
                req.setAttribute("students" , studentDao.findAll());
                resp.sendRedirect("/StudentManagementSystem/students");
            }else{
                List<Student> student = studentDao.findAll();
                req.setAttribute("students" , studentDao.findAll());
                req.getRequestDispatcher("student/student-table.jsp").forward(req,resp);
            }
        }catch(ClassNotFoundException | SQLException ex){
            System.out.println(ex.getMessage());
        }
    }
}
