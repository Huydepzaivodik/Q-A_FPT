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
import model.Subject;
import model.Teacher;

/**
 *
 * @author Quang Huy
 */
@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DAO dao = new DAO();
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Account account = new Account();
        account = dao.getAccount(email, password);
        if (account != null) {
            String account_name = account.getAccount_name();
            String department = dao.getDepById(account.getAddress_id());
            request.setAttribute("department", department);
            request.setAttribute("account_name", account_name);
            request.getRequestDispatcher("Menu.jsp").forward(request, response);
        } else {
            String mess = "Sign In failed ! Try again !";
            request.setAttribute("mess", mess);
            request.getRequestDispatcher("signIn.jsp").forward(request, response);
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAO dao = new DAO();
        if (request.getParameter("mod") != null) {
            String accountName = request.getParameter("acc");
            String dep = request.getParameter("dep");
            Account account = dao.getAccountByAcc(accountName);
            request.setAttribute("account_name", account.getAccount_name());
            request.setAttribute("department", dep);
            request.getRequestDispatcher("Menu.jsp").forward(request, response);
        } else {
            String account_name = request.getParameter("account_name");
            String department = request.getParameter("department");
            Account account = dao.getAccountByAcc(account_name);

            request.setAttribute("account", account);
            request.setAttribute("account_name", account_name);
            request.setAttribute("department", department);

            ArrayList<Teacher> teacherList = dao.getListTeacher();
            request.setAttribute("teacherList", teacherList);

            ArrayList<Subject> subjectList = dao.getListSubject();
            request.setAttribute("subjectList", subjectList);

            request.getRequestDispatcher("feedback.jsp").forward(request, response);
        }

    }

}
