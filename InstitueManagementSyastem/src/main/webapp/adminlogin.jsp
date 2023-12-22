<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

        <title>Hello, world!</title>
        <%if (session.getAttribute("username")!=null){
        	response.sendRedirect("Admin/admindashboard.jsp"); 
        	
        } else{ } %>
         <%String username=(String)session.getAttribute("username"); %>
        <style>
            /* Custom styles for the dashboard */
            .body {
                background-image: url("images/image.jpg");
                background-repeat: no-repeat;
                background-size: cover;
            }

            .container {
                width: 80%; /* Adjust the width as needed */
                margin: 100px 50px; /* Center the container horizontally */
                padding: 20px; /* Add padding inside the container */
                background-color: trasparent; /* Container background color */
                /* box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle box shadow */
            }

             /* Navbar styles */
            .navbar {
                background-color: transparent; /* Navbar background color */
                display: flex;
                justify-content: left;
                padding: 15px 0;
            }
			            .navtext h1 {
                text-decoration: none;
                color: #332a1b; /* Navbar link text color */
                margin-top : 0px;
               
                margin-right :115px;
                margin-leftt :5px;
                font-size: 30px;
                transition: color 0.3s ease;
                font-family: monospace;
                text-align:left;
            }
            .navbar a {
             text-align: center;
                text-decoration: none;
                color: #3d311b; /* Navbar link text color */
                margin: 0 20px;
                font-size: 30px;
                transition: color 0.3s ease; /* Transition effect for color change */
            }

            .navbar a:hover {
                color: #878684;
                font-size: 35px; /* Hovered text color */
            }
            

               /* Main content */
            .container {
                margin-top: 20px;
                padding: 20px;
            }

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

            /* Style the links in the footer */
            .footer a {
                color: #fff;
            }

            .footer a:hover {
                text-decoration: underline;
            }
            h1 {
                font-size: 70px;
                padding: 0;
                margin: 0;
                color: #7a7874;
            }
            p {
                width: 40%; /* Adjust the width as needed */
                margin-left: 0;
                margin-bottom: 50px;
                margin-top: 0; /* Center the container horizontally */
                padding: 10px; /* Add padding inside the container */
                background-color: #968871; /* Container background color */
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                color: #f5f0e9; /* Add a subtle box shadow */
            }

            .login-container {
                background-color: trasparent;
                width: 500px;
                padding: 20px;
                margin-left: 70px;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            .login-form {
                display: flex;
                flex-direction: column;
            }

            .login-form h2 {
                text-align: center;
                margin-bottom: 20px;
                font-size: 20px;
                color: #696154;
            }

            .input-group {
                margin-bottom: 15px;
            }

            .input-group label {
                color: #453418;
                display: block;
                margin-bottom: 5px;
            }

            .input-group input {
                background-color: transparent;
                width: 100%;
                padding: 8px;
                border-radius: 3px;
                border: 1px solid #ccc;
            }

            button {
                padding: 10px;
                border: none;
                border-radius: 3px;
                width: 70px;
                background-color: #b5a791;
                color: #fff;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }
            img {
                margin-left: 5px;
                justfy-content: left;
                display: inline;
                width: 10%;
                height: auto;
            }
            button:hover {
                background-color: #756c5d;
            }
        </style>
    </head>
    <body class="body">
        <!-- Navbar -->
        <!-- Navbar -->
        <div class="navbar">
        <div class="navtext"><h1>ItInfinity</h1></div>
            <a href="index.jsp">Home</a>
            <a href="aboutus.jsp">About Us</a>
            <a href="#">Admin</a>
            <a href="studentlogin.jsp">Student</a>
            <a href="studentregister.jsp">Register</a>
            <a class="last"href="contact.jsp">Contact</a>
        </div>


        <!-- Main content -->
        <div class="container">
            <div class="row">
                <p>Guiding Dreams, Fostering Success. Together, Let's Build a Path to Success.</p>
            </div>
            <div class="row">
                <div class="col"></div>
                <div class="col">
                    <!-- Login Form -->

                    <div class="login-container">
                        <form action="adminlogin" method="post" class="login-form">
                            <h2><img src="images/administrator.png" alt="adminlogo" /> Admin Login</h2>
                            <div class="input-group">
                                <label for="username">Username</label>
                                <input type="text" id="name" name="name" placeholder="Enter your username" required />
                            </div>
                            <div class="input-group">
                                <label for="password">Password</label>
                                <input type="password" id="pass" name="pass" placeholder="Enter your password" required />
                            </div>
                            <button type="submit">Login</button>
                        </form>
                    </div>
                </div>
                <div class="col"></div>
            </div>

            <!-- Add more content here -->
        </div>

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
