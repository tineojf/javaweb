package servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import persistence.dao.AsociadoDAO;
import persistence.models.AsociadoModel;

@WebServlet(name = "svcreate", urlPatterns = {"/svcreate"})
public class svcreate extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String lastname = request.getParameter("lastname");
        String status = request.getParameter("status");
        String eps = request.getParameter("eps");
        String dni = request.getParameter("dni");
        Double contribution = Double.valueOf(request.getParameter("contribution"));
        String level = request.getParameter("level");
        Double salary = Double.valueOf(request.getParameter("salary"));
        Integer childen = Integer.valueOf(request.getParameter("childen"));
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        if (eps == null || eps.isEmpty()) {
            eps = "No definido";
        }
        if (level == null || level.isEmpty()) {
            level = "No definido";
        }
        if (address == null || address.isEmpty()) {
            address = "No definido";
        }
        AsociadoModel asociado = new AsociadoModel(0, name, lastname, status, eps,
                dni, contribution, level, salary, childen, phone, address);

        AsociadoDAO dao = new AsociadoDAO();

        String httpcode = dao.create(asociado);

        if (httpcode.equals("201: CREATED")) {
            String mensaje = "Asociado creado";
            request.setAttribute("mensaje", mensaje);
            RequestDispatcher dispatcher = request.getRequestDispatcher("routes/get.jsp");
            dispatcher.forward(request, response);
        } else {
            String mensaje = "Error " + httpcode;
            request.setAttribute("mensaje", mensaje);
            RequestDispatcher dispatcher = request.getRequestDispatcher("routes/create.jsp");
            dispatcher.forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
