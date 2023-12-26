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
            }

            .container {
                width: 80%; /* Adjust the width as needed */
                margin: 100px 50px; /* Center the container horizontally */
                padding: 20px; /* Add padding inside the container */
                background-color: trasparent; /* Container background color */
                /* box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle box shadow */
            }

            /* Navbar styles */
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
            .registration-form {
                max-width: 400px;
                margin: 10px auto;
                padding: 20px;
                background-color: #f7f7f7;
                border-radius: 5px;
                background-color: transparent;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

			.registration-form .row {
    display: flex;
    
    justify-content: space-between;
}

.registration-form .column {
    flex: 1;
    padding: 10px 10px;
    box-sizing: border-box;
}
            .registration-form h2 {
                text-align: center;
                margin-bottom: 20px;
                color: #696154;
            }

            .input-group {
                margin-bottom: 15px;
                background-color: transparent;
                color: #696154;
            }

            .input-group label {
                display: block;
                margin-bottom: 5px;
            }

            .input-group input,
            .input-group select {
                width: 100%;
                padding: 8px;
                border-radius: 3px;
                border: 1px solid #ccc;
                background-color: transparent;
                color: #696154;
            }

            button {
                width: 100%;
                padding: 10px;
                border: none;
                border-radius: 3px;
                background-color: #b5a791;
                color: #fff;
                cursor: pointer;
                transition: background-color 0.3s ease;
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
            <a href="adminlogin.jsp">Admin</a>
            <a href="studentlogin.jsp">Student</a>
            <a href="#">Register</a>
            <a href="contact.jsp">Contact</a>
        </div>


        <!-- Main content -->
        <div class="container">
            <div class="row"></div>
            <div class="row">
                <div class="col"></div>
                <div class="col">
                    <!-- Login Form -->

                    <div class="registration-form">
                        <h2>Student Registration</h2>
                        <form action="studentregister" method="POST">
                                                 <div class="row">
                        <div class="form-column">
                            <div class="input-group">
                                <label for="name">Name</label>
                                <input type="text" id="name" name="name" placeholder="Enter your name" required />
                            </div>
                            <div class="input-group">
                                <label for="email">Email</label>
                                <input type="email" id="email" name="email" placeholder="Enter your email" required />
                            </div>
                            <div class="input-group">
                                <label for="email">Contact</label>
                                <input type="number" id="contact" name="contact" placeholder="Enter your Contatc" required />
                            </div> 
                            </div>
                            <div class="form-column">
                            <div class="input-group">
                                <label for="course">Select Course</label>
                                <select id="course" name="course">
                                    <option value="FullStack Java">FullStack Java</option>
                                    <option value="FullStack DotNet">FullStack DotNet</option>
                                    <option value="MERN Stack">MERN Stack</option>

                                    <!-- Add more options as needed -->
                                </select>
                            </div>
                            <div class="input-group">
                                <label for="pincode">Password</label>
                                <input type="password" id="pass" name="pass" placeholder="Enter your pincode" required />
                            </div>
                            </div>
                               </div>
                            <div class="row">
                             <div class="form-column"></div>
                              <div class="form-column">
                            <button type="submit">Register</button>
                          
                          <h5 class="register-link">Already Registered ? <a href="studentlogin.jsp">Login Now</a></h5>
                          </div>
                           <div class="foem-column"></div>
                     </div>
                  
                      
                        </form>
                    </div>

                    <!-- Add more content here -->
                </div>
            </div>
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
