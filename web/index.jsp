<%@page import="persistence.dao.AsociadoDAO"%>
<%@page import="persistence.models.AsociadoModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- Stylesheet & icons -->
        <link rel="stylesheet" href="./assets/style.css" />
        <link
            rel="stylesheet"
            href="https://unicons.iconscout.com/release/v4.0.0/css/line.css"
            />

        <title>Project - Software Development I</title>
    </head>
    <body>
        <% AsociadoDAO dao = new AsociadoDAO(); %>

        <nav>
            <div class="logo-name">
                <div class="logo-image">
                    <img src="./images/bar.png" alt="logo" />
                </div>

                <span class="logo_name">Final Project</span>
            </div>

            <div class="menu-items">
                <ul class="nav-links">
                    <li>
                        <a href="./svroutes?page=get">
                            <i class="uil uil-apps"></i>
                            <span class="link-name">Associates</span>
                        </a>
                    </li>
                    <li>
                        <a href="./svroutes?page=post">
                            <i class="uil uil-thumbs-up"></i>
                            <span class="link-name">Create</span>
                        </a>
                    </li>
                    <li>
                        <a href="./svroutes?page=delete">
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
                <img src="./images/profile.png" alt="profile" />
            </div>

            <div class="dash-content">
                <div class="overview">
                    <div class="title">
                        <i class="uil uil-tachometer-fast-alt"></i>
                        <span class="text">Dashboard</span>
                    </div>

                    <div class="boxes">
                        <div class="box box1">
                            <i class="uil uil-apps"></i>
                            <span class="text">Total associates</span>
                            <% int count = dao.countAll();%>
                            <span class="number"><%= count%></span>
                        </div>
                        <div class="box box2">
                            <i class="uil uil-schedule"></i>
                            <span class="text">Date</span>
                            <span class="number" id="spn-date">20,120</span>
                        </div>
                        <div class="box box3">
                            <i class="uil uil-clock"></i>
                            <span class="text">Time</span>
                            <span class="number" id="spn-time">10,120</span>
                        </div>
                    </div>
                </div>

                <div class="activity mr">
                    <div class="title">
                        <i class="uil uil-0-plus"></i>
                        <span class="text">Admin</span>
                    </div>

                    <div class="activity-data" id="1">
                        <%AsociadoModel usuarioAdmin = dao.findByID(1);%>
                        <div class="data names">
                            <span class="data-title"><strong>Código</strong></span>
                            <span class="data-list"><%= usuarioAdmin.getCodigo()%></span>
                        </div>
                        <div class="data names">
                            <span class="data-title"><strong>DNI</strong></span>
                            <span class="data-list"><%= usuarioAdmin.getDni()%></span>
                        </div>
                        <div class="data names">
                            <span class="data-title"><strong>Name</strong></span>
                            <span class="data-list"><%= usuarioAdmin.getNombreCompleto()%></span>
                        </div>
                        <div class="data names">
                            <span class="data-title"><strong>Estado Civil</strong></span>
                            <span class="data-list"><%= usuarioAdmin.getEstadoCivil()%></span>
                        </div>
                        <div class="data names">
                            <span class="data-title"><strong>EPS</strong></span>
                            <span class="data-list"><%= usuarioAdmin.getEps()%></span>
                        </div>
                        <div class="data names">
                            <span class="data-title"><strong>Teléfono</strong></span>
                            <span class="data-list"><%= usuarioAdmin.getTelefono()%></span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Javascript -->
        <script src="./assets/script.js"></script>
    </body>
</html>
