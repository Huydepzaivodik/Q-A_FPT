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
import model.Admin;
import model.Comment;
import model.Teacher;

@WebServlet(name = "LoginAdminController", urlPatterns = {"/loginAd"})
public class LoginAdminController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAO dao = new DAO();

        if (request.getParameter("mod") != null) {
            String adminName = request.getParameter("admin_name");
            Admin admin = dao.getAdminByName(adminName);
            request.setAttribute("admin", admin);
            request.getRequestDispatcher("MenuAd.jsp").forward(request, response);
        }

        String admin_name = request.getParameter("admin_name");

        ArrayList<Account> accountList = dao.getAccountList();
        request.setAttribute("accountList", accountList);

        ArrayList<Comment> commentList = dao.getListComment();
        request.setAttribute("commentList", commentList);

        ArrayList<Teacher> teacherList = dao.getListTeacher();
        request.setAttribute("teacherList", teacherList);

        request.setAttribute("admin_name", admin_name);
        request.getRequestDispatcher("showFeedBack.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAO dao = new DAO();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Admin admin = dao.getAdmin(email, password);
        if (admin != null) {
            request.setAttribute("admin", admin);
            request.getRequestDispatcher("MenuAd.jsp").forward(request, response);

        } else {
            String mess = "Sign In failed ! Try again !";
            request.setAttribute("mess", mess);
            request.getRequestDispatcher("signInAdmin.jsp").forward(request, response);
        }

    }

}
