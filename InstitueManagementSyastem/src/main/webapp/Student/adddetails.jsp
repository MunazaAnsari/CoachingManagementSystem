<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
				<%@page import="dao.studentdao"%> 
		<%@page import="bean.studentbean"%>   
		<%@page import="java.util.*"%>
        <title>Hello, Student!</title>
            <%if (session.getAttribute("username")!=null){
    	
    	
    	
    	}
    else{
    	response.sendRedirect("../index.jsp");
    }
    	
    	
    	%>
    <%String username=(String)session.getAttribute("username"); %>
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
                height: 65%;
                width: 60%; /* Adjust the width as needed */
                margin: 30px 250px; /* Center the container horizontally */
                padding: 20px; /* Add padding inside the container */
                 background-image: url("../images/studentdb7.jpg");
                background-repeat: no-repeat;
                background-size: cover;/* Container background color */
                 /*box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);  Add a subtle box shadow */
            }
            
            .container h1 {
            
            margin-left : 10%;
            color : #878786;
            
            font-size: 250%;
            
            
            }
            
            /* Style for the custom table */
            .registration-form {
                max-width: 600px;
                margin: 10px auto;
                padding: 10px;
                background-color: #f7f7f7;
                border-radius: 5px;
                background-color: transparent;
                
            }

            .registration-form h2 {
                text-align: center;
                margin-top:20px;
                margin-bottom: 20px;
                color: #8da89e;
            }

            .input-group {
                margin-bottom: 15px;
                background-color: transparent;
                color: #90a69e;
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
            
/* Style for the row and column layout */
.registration-form .row {
    display: flex;
    
    justify-content: space-between;
}

.registration-form .column {
    flex: 1;
    padding: 10px 10px;
    box-sizing: border-box;
}

.input-group {
    margin-bottom: 10px;
}

.input-group label,
.input-group input,
.input-group textarea,
button {
    width: 100%;
    box-sizing: border-box;
}

textarea {
    height: 100px; /* Adjust as needed */
}

            button {
                width: 100%;
                padding: 10px;
                border: none;
                border-radius: 3px;
                background-color: #8da89e;
                color: #fff;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            button:hover {
                background-color: #557066;
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

            
            .vertical-nav .current  {
            
                background-color: #d9dedc;
                color: #403c36;
            
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
            	     <% studentbean list = new studentbean(); 
	     String email = (request.getParameter("email"))  ;
	     list = studentdao.getperson(email);
	     request.setAttribute("list1", list);%>
        <div class="navbar">
            <div class="navtext"><h1>ItInfinity</h1></div>
        </div>
        <nav class="vertical-nav">
            <ul>
                <li><a href="../index.jsp">Home</a></li>
                <li class="current"><a href='adddetails.jsp?email=${list1.getSemial()}'>Add Details</a></li>
                <li><a href='studentdashboard.jsp?email=${list1.getSemial()}'>Dashboard</a></li>
                <li><a href='../courseselection?email=${list1.getSemial()}'>Course details</a></li>
                <li><a href='seeevents.jsp?email=${list1.getSemial()}'>See Events</a></li>

                <li><a href="../studentlogout">Logout</a></li>
            </ul>
        </nav>

        <div class="container">
        

        
        <h1>Hello ${list1.getSname()}</h1>

	                       <div class="registration-form">
                        <h2>Add Your Details</h2>
                        <form action="../adddetails" method="POST">
                         <div class="row">
                        <div class="form-column">
                        <input type="hidden" id="name" name="sid" value='${list1.getSid()}'  required />
                            <div class="input-group">
                                <label for="name">Name</label>
                                <input type="text" id="name" name="name" value='${list1.getSname()}'  required />
                            </div>
                            <div class="input-group">
                                <label for="email">Email</label>
                                <input type="email" id="email" name="email" value= '${list1.getSemial()}' placeholder="Enter your email" required />
                            </div>
                            <div class="input-group">
                                <label for="email">Contact</label>
                                <input type="number" id="contact" name="contact" value= '${list1.getScontact()}' placeholder="Enter your Contatc" required />
                            </div></div>
                            <div class="form-column">
                         <div class="input-group">
                                <label for="dob">DOB</label>
                                <input type="date" id="dob" name="dob" value= '${list1.getSdob()}' placeholder="Enter your Date of Birth" required />
                            </div>
                            <div class="input-group">
                                <label for="address">Address</label>
                                <input type="text" id="address" name="address" value= '${list1.getSaddress()}' placeholder="Enter your Address" required />
                            </div>

                            <div class="input-group">
                                <label for="pincode">PinCode</label>
                                <input type="number" id="pincode" name="pincode" value= '${list1.getSpin()}' placeholder="Enter your pincode" required />
                            </div>   
                            </div>
                            <div class="form-column">
                            <div class="input-group">
                                <label for="course">Select Course</label>
                                <select id="course" name="course">
                                	<option value='${list1.getScourse()}'>${list1.getScourse()}</option>
                                   <option value="FullStack Java">FullStack Java</option>
                                    <option value="FullStack DotNet">FullStack DotNet</option>
                                    <option value="MERN Stack">MERN Stack</option>


                                    <!-- Add more options as needed -->
                                </select>
                            </div>

                            </div></div>
                            <button type="submit">Edit</button>
                            
                        </form>

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
