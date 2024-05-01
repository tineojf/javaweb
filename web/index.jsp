<%@page import="persistence.models.AsociadoModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="persistence.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>

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
        <%
            DBConnector connector = DBConnector.getInstance();
            Connection connection = connector.getConnection();
        %>

        <nav>
            <div class="logo-name">
                <div class="logo-image">
                    <img src="./images/bar.png" alt="" />
                </div>

                <span class="logo_name">Final Project</span>
            </div>

            <div class="menu-items">
                <ul class="nav-links">
                    <li>
                        <a href="./redirecciones?variable=amigo">
                            <i class="uil uil-apps"></i>
                            <span class="link-name">Guests</span>
                        </a>
                    </li>
                    <li>
                        <a href="./routes/create.html">
                            <i class="uil uil-thumbs-up"></i>
                            <span class="link-name">Create</span>
                        </a>
                    </li>
                    <li>
                        <a href="./routes/delete.html">
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
                            <span class="text">Total guests</span>
                            <span class="number" id="get-guests">50,120</span>
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

                    <div class="activity-data" id="get-first-guest">
                        <div class="data names">
                            <span class="data-title"><strong>Código</strong></span>
                            <span class="data-list">1</span>
                        </div>
                        <div class="data names">
                            <span class="data-title"><strong>DNI</strong></span>
                            <span class="data-list">14785412</span>
                        </div>
                        <div class="data names">
                            <span class="data-title"><strong>Name</strong></span>
                            <span class="data-list">Franco Tineo</span>
                        </div>
                        <div class="data names">
                            <span class="data-title"><strong>Estado Civil</strong></span>
                            <span class="data-list">Soltero</span>
                        </div>
                        <div class="data names">
                            <span class="data-title"><strong>EPS</strong></span>
                            <span class="data-list">Essalud</span>
                        </div>
                        <div class="data names">
                            <span class="data-title"><strong>Teléfono</strong></span>
                            <span class="data-list">999000000</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Javascript -->
        <script src="./assets/script.js"></script>
    </body>
</html>
