package controller;

import dal.DAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Account;
import model.Comment;

@WebServlet(name = "UpdateFeedbackController", urlPatterns = {"/updateFed"})
public class UpdateFeedbackController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAO dao = new DAO();
        String teacher_id = request.getParameter("teacher_id");
        String account_name = request.getParameter("account_name");
        String department = request.getParameter("department");
        Account account = dao.getAccountByAcc(account_name);

        ArrayList<Comment> commentList = dao.getCommentById(account.getAccount_id(), teacher_id);

        request.setAttribute("commentList", commentList);
        request.setAttribute("account", account);
        request.setAttribute("teacher_id", teacher_id);
        request.setAttribute("department", department);
        request.getRequestDispatcher("updateFb.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAO dao = new DAO();
        String ctittle = request.getParameter("ctittle");
        String account_id = request.getParameter("account_id");
        String teacher_id = request.getParameter("teacher_id");

        String account_name = request.getParameter("account_name");
        Account account = dao.getAccountByAcc(account_name);

        String department = request.getParameter("department");
        String mess = "Update successfully !";

        dao.updateComment(ctittle, account_id, teacher_id);
        request.setAttribute("mess", mess);
        request.setAttribute("account", account);
        request.setAttribute("department", department);
        request.getRequestDispatcher("updateFb.jsp").forward(request, response);
    }

}
