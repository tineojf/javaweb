<%@page import="persistence.dao.AsociadoDAO"%>
<%@page import="persistence.models.AsociadoModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- Stylesheet & icons -->
        <%
            String cssPath = request.getContextPath() + "/assets/style.css";
            String jsPath = request.getContextPath() + "/assets/script.css";
            String logoPath = request.getContextPath() + "/images/bar.png";
            String profilePath = request.getContextPath() + "/images/profile.png";
            String servletPath = request.getContextPath() + "/svroutes";
        %>
        <link rel="stylesheet" href="<%= cssPath%>" />

        <link
            rel="stylesheet"
            href="https://unicons.iconscout.com/release/v4.0.0/css/line.css"
            />

        <title>Create</title>

        <style>
            /* Estilos para las columnas */
            .form-columns {
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                gap: 10px; /* Espacio entre las columnas */
            }
        </style>
    </head>
    <body>
        <%
            AsociadoDAO dao = new AsociadoDAO();
        %>
        <nav>
            <div class="logo-name">
                <div class="logo-image">
                    <img src="<%= logoPath%>" alt="logo" />
                </div>

                <span class="logo_name">Final Project</span>
            </div>

            <div class="menu-items">
                <ul class="nav-links">
                    <li>
                        <a href='<%= servletPath + "?page=index"%>'>
                            <i class="uil uil-estate"></i>
                            <span class="link-name">Dahsboard</span>
                        </a>
                    </li>
                    <li>
                        <a href='<%= servletPath + "?page=get"%>'>
                            <i class="uil uil-apps"></i>
                            <span class="link-name">Associates</span>
                        </a>
                    </li>
                    <li>
                        <a href='<%= servletPath + "?page=delete"%>'>
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

        <div class="dashboard">
            <div class="top">
                <i class="uil uil-bars sidebar-toggle"></i>
                <img src="<%= profilePath%>" alt="profile" />
            </div>

            <div class="dash-content">
                <div class="activity mr">
                    <div class="title">
                        <i class="uil uil-thumbs-up"></i>
                        <span class="text">Create Associate</span>
                        <script>
                            <% if (request.getAttribute("mensaje") != null) {%>
                            alert("<%= request.getAttribute("mensaje")%>");
                            <% }%>
                        </script>
                    </div>
                </div>

                <div class="content ml">
                    <form action="../svcreate" method="POST">
                        <div class="form-columns">
                            <div>
                                <span class="details"><strong>Nombre:</strong></span>
                                <input
                                    type="text"
                                    name="name"
                                    placeholder="Enter name"
                                    required
                                    class="form-input"
                                    />
                            </div>

                            <div>
                                <span class="details"><strong>Apellidos:</strong></span>
                                <input
                                    type="text"
                                    name="lastname"
                                    placeholder="Enter last name"
                                    required
                                    class="form-input"
                                    />
                            </div>

                            <div>
                                <span class="details"><strong>Estado Civil:</strong></span>
                                <select name="status" class="form-input">
                                    <option value="Soltero">Soltero</option>
                                    <option value="Casado">Casado</option>
                                    <option value="Divorciado">Divorciado</option>
                                    <option value="Viudo">Viudo</option>
                                </select>
                            </div>

                            <div>
                                <span class="details"><strong>EPS:</strong></span>
                                <input
                                    type="text"
                                    name="eps"
                                    placeholder="Enter EPS (optional)"
                                    class="form-input"
                                    />
                            </div>

                            <div>
                                <span class="details"><strong>DNI:</strong></span>
                                <input
                                    type="text"
                                    name="dni"
                                    placeholder="Enter DNI"
                                    required
                                    class="form-input"
                                    />
                            </div>

                            <div>
                                <span class="details"><strong>Aportes:</strong></span>
                                <input
                                    type="number"
                                    name="contribution"
                                    value="0"
                                    min="0"
                                    step="0.5"
                                    class="form-input"
                                    />
                            </div>

                            <div>
                                <span class="details"><strong>Nivel de Estudios:</strong></span>
                                <input
                                    type="text"
                                    name="level"
                                    placeholder="Enter educational level (optional)"
                                    class="form-input"
                                    />
                            </div>

                            <div>
                                <span class="details"><strong>Salario</strong></span>
                                <input
                                    type="number"
                                    name="salary"
                                    min="0"
                                    step="0.5"
                                    value="0"
                                    class="form-input"
                                    />
                            </div>

                            <div>
                                <span class="details"><strong>Número de hijos:</strong></span>
                                <input
                                    type="number"
                                    name="childen"
                                    min="0"
                                    step="1"
                                    value="0"
                                    class="form-input"
                                    />
                            </div>

                            <div>
                                <span class="details"><strong>Teléfono:</strong></span>
                                <input
                                    type="text"
                                    name="phone"
                                    placeholder="Enter phone number"
                                    required
                                    class="form-input"
                                    />
                            </div>

                            <div>
                                <span class="details"><strong>Dirección:</strong></span>
                                <input
                                    type="text"
                                    name="address"
                                    placeholder="Enter address (optional)"
                                    class="form-input"
                                    />
                            </div>

                            <div>
                                <button type="submit" class="btn btn-primary btn-large">
                                    Create
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Javascript -->
        <script src="<%= jsPath%>"></script>
    </body>
</html>
