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

@WebServlet(name = "StudentController", urlPatterns = {"/students"})
public class StudentController extends HttpServlet {
    private final StudentDao studentDao = new StudentDaoImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String student_id =req.getParameter("student_id");
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

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
//        int student_id = Integer.parseInt(req.getParameter("student_id"));
        String student_name =req.getParameter("student_name");
        String student_address = req.getParameter("student_address");
        String student_contact = req.getParameter("student_contact");
        String student_email = req.getParameter("student_email");
        int bill_id = Integer.parseInt(req.getParameter("bill_id"));
        boolean fee_status = req.getParameter("fee_status")=="true"?true:false;
        System.out.println(req.getParameter("bill_id"));
        System.out.println(req.getParameter("fee_status"));

        Student student = new Student(student_name, student_address,student_contact,student_email, bill_id, fee_status);

        try{
            System.out.println(student_name);
            studentDao.save(student);
        }catch(ClassNotFoundException | SQLException ex){
            ex.printStackTrace();
        }
    }
}
