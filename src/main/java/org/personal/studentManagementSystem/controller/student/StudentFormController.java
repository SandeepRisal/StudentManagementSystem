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

@WebServlet(name = "StudentFormController", urlPatterns = {"/students/add"})
public class StudentFormController extends HttpServlet {
    private final StudentDao studentDao = new StudentDaoImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String student_id =req.getParameter("student_id");
        try{
            if(student_id !=null){
                Student student = studentDao.findOne(Integer.parseInt(student_id));
                req.setAttribute("student" , student);
                req.setAttribute("form-heading" , "Update Student");
                req.setAttribute("action" , "Update");
            }else{
                req.setAttribute("form-heading" , "Add Student");
                req.setAttribute("action" , "Add");
            }
        }catch(ClassNotFoundException | SQLException ex){
            ex.printStackTrace();
        }
        req.getRequestDispatcher("/student/student-add-form.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String student_id =req.getParameter("student_id").trim();
        System.out.println(student_id);
        int result;
        try{
            Student student = new Student();
            student.setStudent_name(req.getParameter("student_name"));
            student.setStudent_address(req.getParameter("student_address"));
            student.setStudent_contact(req.getParameter("student_contact"));
            student.setStudent_email(req.getParameter("student_email"));

            if(student_id.length()!=0){
                student.setStudent_id(Integer.parseInt(student_id));
                result = studentDao.update(student);
                System.out.println(student_id);
            }else{
                result = studentDao.save(student);
            }
            if(result == 1){
                resp.sendRedirect("/StudentManagementSystem/students");
            }

        }catch(SQLException | ClassNotFoundException ex){
            ex.printStackTrace();
        }
    }
}
