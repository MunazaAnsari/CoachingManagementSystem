<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

        <title>Hello, world!</title>
        <style>
            /* Custom styles for the dashboard */
            .body {
            background-image: url("images/image.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            padding: 20px; /* Adding padding for better mobile experience */
            margin: 0; /* Reset margin for the body */
            font-family: Arial, sans-serif; 
            }

            .container {
                 width: 80%; /* Adjust the width as needed */
    max-width: 1200px; /* Limit maximum width for larger screens */
    margin: 100px auto; /* Center the container horizontally and add space at the top */
    padding: 20px; /* Add padding inside the container */
    background-color: transparent;/* Container background color */
                /* box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle box shadow */
            }

            /* Navbar styles */
            .navbar {
                background-color: transparent; /* Navbar background color */
                display: flex;
                justify-content: left;
                padding: 2% 0;
               
            }
			            .navtext h1 {
                text-decoration: none;
                color: #332a1b; /* Navbar link text color */
                margin-top : 0px;
               
                margin-right :150px;
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
            
            .navbar .last  {
 /* Navbar link text color */
		
                
                color : #75746b;
   /* Transition effect for color change */
            }
            

            .navbar a:hover {
                color: #878684;
                font-size: 35px; /* Hovered text color */
            }
            /* Main content */
            .container {
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
			.footer h4 ,h6, p{
				text-align: center;
				 color: #f5f0e9; 
				margin :3px ;
				margin-top : 4px;
			
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

            .intro p {
            	display: block;
                font-size: 70px;
                padding: 0;
                text-align: left;
               justify-content:left;
  				margin: 0;
                color: #7a7874;
            }
            .box p {
                width: 40%; /* Adjust the width as needed */
                margin-left: 50px; /* Center the container horizontally */
                padding: 10px; /* Add padding inside the container */
                background-color: #968871; /* Container background color */
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                color: #f5f0e9; /* Add a subtle box shadow */
            }
            
                        .footerbox p {
                width: 40%; /* Adjust the width as needed */
                margin-left: 5px;
                bottom: 0; /* Center the container horizontally */
                padding: 8px; /* Add padding inside the container */
                background-color: #968871; /* Container background color */
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                color: #f5f0e9; /* Add a subtle box shadow */
            }
            
        </style>
    </head>
    <body class="body">
        <!-- Navbar -->
        <div class="navbar">
        <div class="navtext"><h1>ItInfinity</h1></div>
            <a href="#">Home</a>
            <a href="aboutus.jsp">AboutUs</a>
            <a href="adminlogin.jsp">Admin</a>
            <a href="studentlogin.jsp">Student</a>
            <a href="studentregister.jsp">Register</a>
            <a class="last" href="contact.jsp">Contact</a>
        </div>

        <!-- Main content -->
        <div class="container">
            <div class="row"></div>
            <div class="row">
                <div class="col"></div>
                <div class="col">
                    <div class="intro">
                        <p>Level Up</p>
                        <p>Your Career</p>
                    </div><div class ="box">
                    <p > The interesting thing about Learning is that it troubles the Comfortable, and comforts the troubled</p>
                    </div>
                    
                </div>
                <div class="col"></div>
            </div>

            <!-- Add more content here -->
        </div>

        <!-- Footer -->
        <!-- Footer -->
        <footer class="footer">
            <h4>Contact Information</h4>
            <h6>Email: info@example.com</h6>
            <h6>Phone: +123456789</h6>

            <div class="col-sm-12">
            <div class="footerbox">
                <p class="text-center">&copy; 2023 YourWebsiteName. All rights reserved.</p>
                </div>
            </div>
        </footer>
    </body>
</html>
