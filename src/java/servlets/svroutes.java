package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "svroutes", urlPatterns = {"/svroutes"})
public class svroutes extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String page = request.getParameter("page");

        switch (page) {
            case "index" ->
                response.sendRedirect("index.jsp");
            case "post" ->
                response.sendRedirect("routes/create.jsp");
            case "get" ->
                response.sendRedirect("routes/get.jsp");
            case "delete" ->
                response.sendRedirect("routes/delete.jsp");
            default ->
                response.sendRedirect("index.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
