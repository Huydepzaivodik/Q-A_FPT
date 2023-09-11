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

@WebServlet(name = "DoQNAAdminController", urlPatterns = {"/qnaAd"})
public class DoQNAAdminController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DAO dao = new DAO();
        String admin_name = request.getParameter("admin_name");
        request.setAttribute("admin_name", admin_name);

        ArrayList<QNA> qnaList = dao.getListQNA();
        request.setAttribute("qnaList", qnaList);

        ArrayList<Account> accountList = dao.getAccountList();
        request.setAttribute("accountList", accountList);

        request.getRequestDispatcher("QnaAdmin.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAO dao = new DAO();

        String answer = request.getParameter("answer");
        String question = request.getParameter("question");
        String admin_name = request.getParameter("admin_name");

        ArrayList<QNA> qnaList = dao.getListQNA();
        request.setAttribute("qnaList", qnaList);

        ArrayList<Account> accountList = dao.getAccountList();
        request.setAttribute("accountList", accountList);

        String mess = "Update successfully";
        dao.updateAnswer(question, answer);
        
        request.setAttribute("answer", answer);
        request.setAttribute("question", question);
        request.setAttribute("admin_name", admin_name);
        request.setAttribute("mess", mess);

        request.getRequestDispatcher("QnaAdmin.jsp").forward(request, response);

    }

}
