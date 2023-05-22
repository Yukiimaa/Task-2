package Sprint4_2.servlets;

import Sprint4_2.db.DButil;
import Sprint4_2.models.Item;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/index")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        ArrayList<Item> items = DButil.getItems();
        request.setAttribute("items",items);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }

}
