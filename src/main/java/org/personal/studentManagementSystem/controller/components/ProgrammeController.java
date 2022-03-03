package org.personal.studentManagementSystem.controller.components;

import org.personal.studentManagementSystem.dao.ProgrammeDao;
import org.personal.studentManagementSystem.dao.impl.ProgrammeDaoImpl;
import org.personal.studentManagementSystem.model.Programme;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ProgrammeController", urlPatterns = {"/programmes"})
public class ProgrammeController extends HttpServlet {
    private final ProgrammeDao programmeDao = new ProgrammeDaoImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
                req.setAttribute("programmes" , programmeDao.findAll());
                req.getRequestDispatcher("components/programme.jsp").forward(req,resp);

        }catch(ClassNotFoundException | SQLException ex){
            System.out.println(ex.getMessage());
        }
    }

}
