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
import model.QNA;

@WebServlet(name = "QnaStudentController", urlPatterns = {"/qnaStu"})
public class QnaStudentController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DAO dao = new DAO();
        String account_name = request.getParameter("account_name");
        String department = request.getParameter("department");
        Account account = dao.getAccountByAcc(account_name);

        ArrayList<QNA> qnaList = dao.getListQNA();
        request.setAttribute("qnaList", qnaList);

        request.setAttribute("account", account);
        request.setAttribute("account_name", account_name);
        request.setAttribute("department", department);

        request.getRequestDispatcher("QnaStudent.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DAO dao = new DAO();
        String account_name = request.getParameter("account_name");
        String department = request.getParameter("department");
        String question = request.getParameter("question");
        Account account = dao.getAccountByAcc(account_name);
        
        dao.insertQuestion(question, account.getAccount_id());

        ArrayList<QNA> qnaList = dao.getListQNA();
        request.setAttribute("qnaList", qnaList);

        String mess = "Send successfully !";
        request.setAttribute("account", account);
        request.setAttribute("account_name", account_name);
        request.setAttribute("department", department);
        request.setAttribute("mess", mess);

        request.getRequestDispatcher("QnaStudent.jsp").forward(request, response);

    }

}
