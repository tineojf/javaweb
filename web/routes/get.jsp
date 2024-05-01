<%-- 
    Document   : get
    Created on : May 1, 2024, 10:37:20 AM
    Author     : tineo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- Stylesheet & icons -->
        <link rel="stylesheet" href="assets/style.css" />
        <link
            rel="stylesheet"
            href="https://unicons.iconscout.com/release/v4.0.0/css/line.css"
            />

        <title>Guests</title>
    </head>
    <body>
        <% String variable = (String) request.getAttribute("variable");%>

        <nav>
            <div class="logo-name">
                <div class="logo-image">
                    <img src="../images/bar.png" alt="" />
                </div>

                <span class="logo_name">Final Project</span>
            </div>

            <div class="menu-items">
                <ul class="nav-links">
                    <li>
                        <a href="index.jsp">
                            <i class="uil uil-estate"></i>
                            <span class="link-name">Dahsboard</span>
                        </a>
                    </li>
                    <li>
                        <a href="../routes/create.html">
                            <i class="uil uil-thumbs-up"></i>
                            <span class="link-name">Create</span>
                        </a>
                    </li>
                    <li>
                        <a href="../routes/delete.html">
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

                <div class="search-box">
                    <i class="uil uil-search"></i>
                    <input type="text" placeholder="Search here..." />
                </div>

                <img src="../images/profile.png" alt="profile" />
            </div>

            <div class="dash-content">
                <div class="activity mr">
                    <div class="title">
                        <i class="uil uil-apps"></i>
                        <span class="text">Guests</span>
                    </div>

                    <div class="activity-data" id="get-guest">
                        <div class="data">
                            <span class="data-title"><strong>ID</strong></span>
                            <span class="data-list">1</span>
                            <span class="data-list">2</span>
                            <span class="data-list">3</span>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Nombre</strong></span>
                            <span class="data-list">AA</span>
                            <span class="data-list">BB</span>
                            <span class="data-list">CC</span>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Apellidos</strong></span>
                            <span class="data-list">AAA</span>
                            <span class="data-list">BBB</span>
                            <span class="data-list">CCC</span>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Estado</strong></span>
                            <span class="data-list">Soltero</span>
                            <span class="data-list">Casado</span>
                            <span class="data-list">Casado</span>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>EPS</strong></span>
                            <span class="data-list">Essalud</span>
                            <span class="data-list">No definido</span>
                            <span class="data-list">SIS</span>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>DNI</strong></span>
                            <span class="data-list">1728123</span>
                            <span class="data-list">1728234</span>
                            <span class="data-list">1728765</span>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Aportes</strong></span>
                            <span class="data-list">100.00</span>
                            <span class="data-list">123.00</span>
                            <span class="data-list">12.50</span>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Estudios</strong></span>
                            <span class="data-list">Licenciado</span>
                            <span class="data-list">No definido</span>
                            <span class="data-list">No definido</span>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Salario</strong></span>
                            <span class="data-list">10000.00</span>
                            <span class="data-list">1244.00</span>
                            <span class="data-list">1500.00</span>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Hijos</strong></span>
                            <span class="data-list">0</span>
                            <span class="data-list">1</span>
                            <span class="data-list">0</span>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Teléfono</strong></span>
                            <span class="data-list">999000111</span>
                            <span class="data-list">999000222</span>
                            <span class="data-list">999000333</span>
                        </div>
                        <div class="data">
                            <span class="data-title"><strong>Dirección</strong></span>
                            <span class="data-list">Avenida principal</span>
                            <span class="data-list">Calle 2</span>
                            <span class="data-list">Avenida 3</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Javascript -->
        <script src="../assets/script.js"></script>
    </body>
</html>
