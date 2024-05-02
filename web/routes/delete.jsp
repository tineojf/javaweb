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

        <title>Delete</title>
    </head>
    <body>
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
                        <a href="../index.jsp">
                            <i class="uil uil-estate"></i>
                            <span class="link-name">Dahsboard</span>
                        </a>
                    </li>
                    <li>
                        <a href="../routes/get.html">
                            <i class="uil uil-apps"></i>
                            <span class="link-name">Guests</span>
                        </a>
                    </li>
                    <li>
                        <a href="../routes/create.html">
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
                <img src="../images/profile.png" alt="profile" />
            </div>

            <div class="dash-content">
                <div class="activity mr">
                    <div class="title">
                        <i class="uil uil-chart"></i>
                        <span class="text">Delete Guest</span>
                    </div>
                </div>

                <div class="content ml">
                    <form action="delete.jsp" method="POST">
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
        <script src="../assets/script.js"></script>
    </body>
</html>
