<%@page import="persistence.dao.AsociadoDAO"%>
<%@page import="persistence.models.AsociadoModel"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- Stylesheet & icons -->
        <link rel="stylesheet" href="../assets/style.css" />
        <link
            rel="stylesheet"
            href="https://unicons.iconscout.com/release/v4.0.0/css/line.css"
            />

        <title>Guests</title>
    </head>
    <body>
        <%
            AsociadoDAO dao = new AsociadoDAO();
            ArrayList<AsociadoModel> associateList = dao.findAll();
        %>

        <nav>
            <div class="logo-name">
                <div class="logo-image">
                    <img src="../images/bar.png" alt="logo" />
                </div>

                <span class="logo_name">Final Project</span>
            </div>

            <div class="menu-items">
                <ul class="nav-links">
                    <li>
                        <a href="../svroutes?page=index">
                            <i class="uil uil-estate"></i>
                            <span class="link-name">Dahsboard</span>
                        </a>
                    </li>
                    <li>
                        <a href="../svroutes?page=post">
                            <i class="uil uil-thumbs-up"></i>
                            <span class="link-name">Create</span>
                        </a>
                    </li>
                    <li>
                        <a href="../svroutes?page=delete">
                            <i class="uil uil-chart"></i>
                            <span class="link-name">Delete</span>
                        </a>
                    </li>
                </ul>

                <ul class="logout-mode">
                    <li class="mode">
                        <a href="#">
                            <i class="uil uil-moon"></i>
                            <span class="link-name">Dark Mode</span>
                        </a>

                        <div class="mode-toggle">
                            <span class="switch"></span>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <section class="dashboard">
            <div class="top">
                <i class="uil uil-bars sidebar-toggle"></i>
                <img src="../images/profile.png" alt="profile" />
            </div>

            <div class="dash-content">
                <div class="activity mr">
                    <div class="title">
                        <i class="uil uil-apps"></i>
                        <span class="text">Associates</span>
                    </div>

                    <div class="activity-data" id="get-guest">
                        <div class="data">
                            <span class="data-title"><strong>ID</strong></span>
                            <%
                                for (AsociadoModel associate : associateList) {
                            %>
                            <span class="data-list"><%= associate.getCodigo()%></span>
                            <% }%>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Nombre</strong></span>
                            <%
                                for (AsociadoModel associate : associateList) {
                            %>
                            <span class="data-list"><%= associate.getNombre()%></span>
                            <% }%>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Apellidos</strong></span>
                            <%
                                for (AsociadoModel associate : associateList) {
                            %>
                            <span class="data-list"><%= associate.getApellidos()%></span>
                            <% }%>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Estado</strong></span>
                            <%
                                for (AsociadoModel associate : associateList) {
                            %>
                            <span class="data-list"><%= associate.getEstadoCivil()%></span>
                            <% }%>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>EPS</strong></span>
                            <%
                                for (AsociadoModel associate : associateList) {
                            %>
                            <span class="data-list"><%= associate.getEps()%></span>
                            <% }%>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>DNI</strong></span>
                            <%
                                for (AsociadoModel associate : associateList) {
                            %>
                            <span class="data-list"><%= associate.getDni()%></span>
                            <% }%>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Aportes</strong></span>
                            <%
                                for (AsociadoModel associate : associateList) {
                            %>
                            <span class="data-list"><%= associate.getAportes()%></span>
                            <% }%>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Estudios</strong></span>
                            <%
                                for (AsociadoModel associate : associateList) {
                            %>
                            <span class="data-list"><%= associate.getNivelEstudio()%></span>
                            <% }%>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Salario</strong></span>
                            <%
                                for (AsociadoModel associate : associateList) {
                            %>
                            <span class="data-list"><%= associate.getSalario()%></span>
                            <% }%>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Hijos</strong></span>
                            <%
                                for (AsociadoModel associate : associateList) {
                            %>
                            <span class="data-list"><%= associate.getNumeroHijos()%></span>
                            <% }%>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Teléfono</strong></span>
                            <%
                                for (AsociadoModel associate : associateList) {
                            %>
                            <span class="data-list"><%= associate.getTelefono()%></span>
                            <% }%>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Dirección</strong></span>
                            <%
                                for (AsociadoModel associate : associateList) {
                            %>
                            <span class="data-list"><%= associate.getDireccion()%></span>
                            <% }%>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Javascript -->
        <script src="../assets/script.js"></script>
    </body>
</html>
