package servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import persistence.dao.AsociadoDAO;

@WebServlet(name = "svdelete", urlPatterns = {"/svdelete"})
public class svdelete extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dni = request.getParameter("dni");

        AsociadoDAO dao = new AsociadoDAO();
        String httpcode = dao.delete(dni);

        if (httpcode.equals("202: DELETED")) {
            String mensaje = "Asociado eliminado";
            request.setAttribute("mensaje", mensaje);
            RequestDispatcher dispatcher = request.getRequestDispatcher("routes/get.jsp");
            dispatcher.forward(request, response);
        } else {
            String mensaje = "Error " + httpcode;
            request.setAttribute("mensaje", mensaje);
            RequestDispatcher dispatcher = request.getRequestDispatcher("routes/delete.jsp");
            dispatcher.forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
