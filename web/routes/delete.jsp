<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- Stylesheet & icons -->
        <%
            String cssPath = request.getContextPath() + "/assets/style.css";
            String jsPath = request.getContextPath() + "/assets/script.js";
            String logoPath = request.getContextPath() + "/images/bar.png";
            String profilePath = request.getContextPath() + "/images/profile.png";
            String svroutesPath = request.getContextPath() + "/svroutes";
            String svdeletePath = request.getContextPath() + "/svdelete";
        %>
        <link rel="stylesheet" href="<%= cssPath%>" />

        <link
            rel="stylesheet"
            href="https://unicons.iconscout.com/release/v4.0.0/css/line.css"
            />

        <title>Delete</title>
    </head>
    <body>
        <script>
            <% if (request.getAttribute("mensaje") != null) {%>
            alert("<%= request.getAttribute("mensaje")%>");
            <% }%>
        </script>
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
                        <a href='<%= svroutesPath + "?page=index"%>'>
                            <i class="uil uil-estate"></i>
                            <span class="link-name">Dahsboard</span>
                        </a>
                    </li>
                    <li>
                        <a href='<%= svroutesPath + "?page=get"%>'>
                            <i class="uil uil-apps"></i>
                            <span class="link-name">Associates</span>
                        </a>
                    </li>
                    <li>
                        <a href='<%= svroutesPath + "?page=post"%>'>
                            <i class="uil uil-thumbs-up"></i>
                            <span class="link-name">Create</span>
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
                        <i class="uil uil-chart"></i>
                        <span class="text">Delete Associate</span>
                    </div>
                </div>

                <div class="content ml">
                    <form action="<%= svdeletePath%>" method="POST">
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

                        <br />

                        <button type="submit" class="btn btn-danger">Delete</button>
                    </form>
                </div>
            </div>
        </div>
        <!-- Javascript -->
        <script src="<%= jsPath%>"></script>
    </body>
</html>
