package Sprint4_2.servlets;

import Sprint4_2.db.DButil;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email= request.getParameter("email_entered");
        String password = request.getParameter("pwd_entered");
        if (DButil.checkUser(email,password)) {
            String fullName= DButil.getFullName(email);
            request.setAttribute("fullName",fullName);
            request.getRequestDispatcher("/userpage.jsp").forward(request,response);
        }else response.sendRedirect("/login.jsp?wronguser");
    }
}
