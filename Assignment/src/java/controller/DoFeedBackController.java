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
import model.Account;
import model.Comment;
import model.Subject;
import model.Teacher;

/**
 *
 * @author Quang Huy
 */
@WebServlet(name = "ListedTeacherController", urlPatterns = {"/feedback"})
public class DoFeedBackController extends HttpServlet {

    DAO dao = new DAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String subject_id = request.getParameter("subject_id");
        String teacher_id = request.getParameter("teacher_id");
        String account_name = request.getParameter("account_name");
        String department = request.getParameter("department");

        Account account = dao.getAccountByAcc(account_name);
        Subject subject = dao.getSubjectById(subject_id);
        Teacher teacher = dao.getTeacherById(teacher_id);

        request.setAttribute("subject", subject);
        request.setAttribute("teacher", teacher);
        request.setAttribute("account", account);
        request.setAttribute("department", department);
        request.getRequestDispatcher("feedbackTable.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAO dao = new DAO();
        String account_name = request.getParameter("account_name");
        String department = request.getParameter("department");
        Account account = dao.getAccountByAcc(account_name);

        request.setAttribute("account", account);
        request.setAttribute("account_name", account_name);
        request.setAttribute("department", department);

        String ctittle = request.getParameter("ctittle");
        String teacher_id = request.getParameter("teacher_id");
        String account_id = request.getParameter("account_id");
        
        dao.insertComment(ctittle, account_id, teacher_id);//Insert ctittle to database

        ArrayList<Teacher> teacherList = dao.getListTeacher();
        request.setAttribute("teacherList", teacherList);

        ArrayList<Subject> subjectList = dao.getListSubject();
        request.setAttribute("subjectList", subjectList);

        request.getRequestDispatcher("feedback.jsp").forward(request, response);

    }

}
