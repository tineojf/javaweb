package servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "redirecciones", urlPatterns = {"/redirecciones"})
public class redirecciones extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String variable = request.getParameter("variable");
        request.setAttribute("variable", variable);
        RequestDispatcher dispatcher = request.getRequestDispatcher("routes/get.jsp");
        dispatcher.forward(request, response);
        //response.sendRedirect("routes/get.jsp");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
