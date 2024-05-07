<%@page import="persistence.dao.AsociadoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="persistence.models.AsociadoModel"%>
<%@page contentType="application-/vnd.ms-excel"%>
<%
    String nombre = "report.xls";
    response.setHeader("Content-Disposition", "attachment;filename=" + nombre);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            AsociadoDAO dao = new AsociadoDAO();
            ArrayList<AsociadoModel> associateList = dao.findAll();
            Integer numeroAsociados = dao.countAll();
        %>
        <h1>Reporte - General</h1>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>NOMBRE</th>       
                <th>APELLIDOS</th>
                <th>ESTADO</th>
                <th>EPS</th>
                <th>DNI</th>
                <th>APORTES</th>
                <th>ESTUDIOS</th>
                <th>SALARIOS</th>
                <th>HIJOS</th>
                <th>TELEFONO</th>
                <th>DIRECCION</th>
            </tr>

            <%
                for (AsociadoModel associate : associateList) {
            %>
            <tr>
                <td><%=associate.getCodigo()%></td>
                <td><%=associate.getNombre()%></td>
                <td><%=associate.getApellidos()%></td>
                <td><%=associate.getEstadoCivil()%></td>
                <td><%=associate.getEps()%></td>
                <td><%=associate.getDni()%></td>
                <td><%=associate.getAportes()%></td>
                <td><%=associate.getNivelEstudio()%></td>
                <td><%=associate.getSalario()%></td>
                <td><%=associate.getNumeroHijos()%></td>
                <td><%=associate.getTelefono()%></td>
                <td><%=associate.getDireccion()%></td>
            </tr>
            <% }%>
        </table>

        <h1>Reporte - Especifico</h1>
        <table border="1">
            <tr>
                <th>Numero de Asociados</th>
            </tr>
            <tr>
                <th><%=numeroAsociados%></th>
            </tr>
        </table>
    </body>
</html>
