/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Comment;
import model.Teacher;

/**
 *
 * @author Quang Huy
 */
@WebServlet(name = "LoginTeacherController", urlPatterns = {"/loginTe"})
public class LoginTeacherController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAO dao = new DAO();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Teacher teacher = dao.getTeacherByLog(email, password);
        if (teacher != null) {         
            request.setAttribute("teacher", teacher);
            request.setAttribute("account", dao.getAccountList());
            request.setAttribute("comment", dao.getListComment());
            request.getRequestDispatcher("showFeedBackTeacher.jsp").forward(request, response);

        } else {
            request.setAttribute("mess", "Sign In Fail!");
            request.getRequestDispatcher("signInTeacher.jsp").forward(request, response);
        }
    }

}
