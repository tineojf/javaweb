package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "svget", urlPatterns = {"/svget"})
public class svget extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String page = request.getParameter("page");

        switch (page) {
            case "index" ->
                response.sendRedirect("index.jsp");
            case "post" ->
                response.sendRedirect("routes/create.jsp");
            case "delete" ->
                response.sendRedirect("routes/delete.jsp");
            default ->
                response.sendRedirect("routes/get.jsp");
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
