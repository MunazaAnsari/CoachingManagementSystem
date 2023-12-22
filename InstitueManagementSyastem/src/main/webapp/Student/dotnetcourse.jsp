<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        		<%@page import="dao.eventdao"%> 
		<%@page import="bean.eventbean"%>
				<%@page import="dao.studentdao"%> 
		<%@page import="bean.studentbean"%>   
		<%@page import="java.util.*"%>
        <title>Hello, Student!</title>
             <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
            margin-bottom : 0;
            font-size: 250%;
            
            
            }
            
            /* Style for the custom table */

/* Style for the row and column layout */


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
            
                        
            .vertical-nav .current  {
            
                background-color: #d9dedc;
                color: #403c36;
            
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
/* Styles for course details */

.course-details {
    max-width: 600px;
    margin: 0% auto;
    padding: 20px;
    background-color: trasparent;
    border-radius: 8px;
    text-align: center;
}
h2 {
    color: #8da89e ;
    font-size: 32px;
    margin-bottom: 2%;
    margin-top:1%;
}

.overview {
    color: #555;
    font-size: 18px;
    margin-bottom: 2%;
}

.details h3 {
    color: #8da89e;
    font-size: 24px;
    margin-top: 2%;
    margin-bottom :1%;
}

.details ul {
    list-style-type: none;
    margin: 10px 0 20px;
    padding: 0;
}

.details li {
    color: #5e5e5c;
    font-size: 16px;
    margin-bottom: 8px;
}

.details p {
    color: #555;
    font-size: 16px;
    margin-bottom: 2%;
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
<section class="course-details">
    <h2>.NET Full Stack Development</h2>
    <p class="overview">
        Master .NET, C#, and advanced frontend frameworks to build scalable web applications.
    </p>
    <div class="details">
        <h3>Course Highlights</h3>
        <ul>
            <li>.NET Core, C#, and Entity Framework</li>
            <li>Frontend with HTML, CSS, and JavaScript</li>
            <li>Angular/React for dynamic UI</li>
            <li>Real-world projects & mentor support</li>
        </ul>
        <h3>Duration & Certification</h3>
        <p>6 months | Industry-recognized certification</p>

    </div>
</section>
		
  
        
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
