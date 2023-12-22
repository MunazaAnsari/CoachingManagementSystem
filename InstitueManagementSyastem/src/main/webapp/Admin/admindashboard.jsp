<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

        <title>Hello, world!</title>
        <%if (session.getAttribute("username")!=null){ } else{ response.sendRedirect("../index.jsp"); } %> <%String username=(String)session.getAttribute("username"); %>

        <style>
            /* Custom styles for the dashboard */
            .body {
                background-image: url("../images/Dashboarbg.jpg");
                background-repeat: no-repeat;
                background-size: cover;
            }
            body,
            html {
                margin: 0;
                padding: 0;
                height: 100%;
            }

            .container {
                height: 80%;
                width: 80%; /* Adjust the width as needed */
                margin: 0% 50px; /* Center the container horizontally */
                padding: 20px; /* Add padding inside the container */
                background-color: trasparent; /* Container background color */
                /* box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle box shadow */
            }

            /* Style for the vertical navbar */

            .vertical-nav {
                background-color: transparent;
                width: 200px;
                height: 100vh; /* Full height of the viewport */

                position: absolute;

                /*display: block;*/
                padding-right: 7px; /* Fixed position to keep it visible while scrolling */
            }

            .vertical-nav ul {
                list-style: none;
                padding: 0;
                margin: 0;
            }

            .vertical-nav li {
                border-bottom: 1px solid #ddd;
            }

            .vertical-nav a {
                font-size: 15px;
                display: block;
                padding: 10px 15px;
                text-decoration: none;
                color: #403c36;
                transition: background-color 0.3s ease;
            }

            .vertical-nav a:hover {
                background-color: #635e55;
                color: #dedbd7;
            }

            .navbar {
                background-color: transparent; /* Navbar background color */
                display: flex;

                padding: 15px 0;
            }

            .navtext h1 {
                text-decoration: none;
                color: #332a1b; /* Navbar link text color */
                margin: 0 20px;
                font-size: 30px;
                transition: color 0.3s ease;
                font-family: monospace;
            }

            .navbar a {
                text-decoration: none;
                color: #3d311b; /* Navbar link text color */
                margin: 0 50px;
                font-size: 30px;

                transition: color 0.3s ease; /* Transition effect for color change */
            }

            .navbar a:hover {
                color: #878684;
                font-size: 35px; /* Hovered text color */
            }

            /* Main content */

            /* Footer styles */
            .footer {
                position: fixed;
                left: 0;
                bottom: 0;
                width: 100%;
                height: 100px;
                background-color: #4f4638;
                color: #fff;
            }
            .footer h4,
            h6,
            p {
                text-align: center;
                color: #f5f0e9;
                margin: 3px;
            }

            .dashboard {
                padding: 20px;
                width:100%;
                height:80%;
                margin-left: 10%;
                margin-top:0%;
                background-image: url("../images/admincontainer.jpg");/* Main color from the theme */
                background-repeat: no-repeat;
                background-size: cover;
                border-radius: 8px;
               
            }

            .admin-text {
                font-size: 6em;
                text-align: center;
                text-transform: uppercase;
                color: #756c5d; /* Text color from the theme */
                text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
            }

            /* Center the text in the footer */
            .footer p.text-center {
                text-align: center;
            }

            /* Style the links in the footer */
            .footer a {
                color: #fff;
            }

            .footer a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body class="body">
        <div class="navbar">
            <div class="navtext"><h1>ItInfinity</h1></div>
        </div>
        <nav class="vertical-nav">
            <ul>
                <li><a href="../index.jsp">Home</a></li>
                <li><a href="admindashboard.jsp">Dashboard</a></li>
            <li><a href="showstudents.jsp">Students List</a></li>
            <li><a href="approvestudent.jsp">Pending Students</a></li>
            <li><a href="showevents.jsp"> Events</a></li>
            <li><a href="addevents.jsp">Add Events</a></li>
            <li><a href="showenquiery.jsp">Enquieries</a></li>
            
            <li><a href="../adminlogout">Logout</a></li>
            </ul>
        </nav>

        <div class="container">
            <div class="dashboard">
              
            </div>
        </div>

        <!-- Main content -->

        <!-- Login Form -->

        <!-- Footer -->
        <footer class="footer">
            <h4>Contact Information</h4>
            <h6>Email: info@example.com</h6>
            <h6>Phone: +123456789</h6>

            <div class="col-sm-12">
                <p class="text-center">&copy; 2023 YourWebsiteName. All rights reserved.</p>
            </div>
        </footer>
    </body>
</html>
