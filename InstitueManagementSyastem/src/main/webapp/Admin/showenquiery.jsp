<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<%@page import="dao.contactdao"%> 
		<%@page import="bean.contactbean"%>   
		<%@page import="java.util.*"%>
        <title>Hello, world!</title>
        
		    	
     <%String  user =  (String)session.getAttribute("username"); %>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

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
                height: 60%;
                width: 60%; /* Adjust the width as needed */
                margin: 5px 250px; /* Center the container horizontally */
                padding: 10px; /* Add padding inside the container */
                background-color: trasparent;
                 /* Container background color */
                /* box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle box shadow */
            }
            .container h1{
            
                text-align: center;
                margin-bottom: 20px;
                font-size: 30px;
                color: #696154;
            
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
            
                   /* Style for the custom table */
		.custom-table {
		    border-collapse: collapse;
		    width: 100%;
		   
		    margin: 10px auto;
		    
		}


		.custom-table th, .custom-table td {
		    border: 1px solid #756c5d; /* Border color */
		    padding: 4px;
		    text-align: center;
		}
		
		.custom-table th {
		    background-color: #968871; /* Header background color */
		    color: #e7e8e1; /* Header text color */
		}
		
		.custom-table tbody tr:nth-child(even) {
		    background-color: #cdcac2; /* Alternate row background color */
		}
		
		.custom-table tbody tr:hover {
		    background-color: #b5a791; /* Hovered row background color */
		    color: #fff; /* Hovered row text color */
		}
		
		/* Style for anchor tag buttons */
.button-link {
    display: block;
    padding: 5px 10px;
    margin-top : 5px;
    margin-bottom : 5px;
    text-decoration: none;
    background-color: #b5a791; /* Button background color */
    color: #fff; /* Button text color */
    border-radius: 5px;
    border: 1px solid #b5a791; /* Button border */
    transition: background-color 0.3s ease;
}

.button-link:hover {
    background-color: #756c5d; /* Button background color on hover */
    border-color: #756c5d; /* Button border color on hover */
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
            .footer h4,h6,p {
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
        
        <h1>enquiries</h1>
        
			        
        <table class="custom-table">
    <thead>
        <tr>
            <th>Sr.no</th>
            <th>Name</th>
            <th>Email</th>
            <th>Contact</th>
            <th style="width: 30%;" >Subject</th>
            <th style="width: 40%;">Description</th>
            

            
            <th colspan="2" >Change Status</th>
        </tr>
    </thead>
    
    <tbody>
	     <% List<contactbean> list = new ArrayList<contactbean>(); 
	     list = contactdao.Showenquiery();
	     request.setAttribute("list1", list);%>
	     <%    int a=1; %>
	   
	     <c:forEach items="${list1}" var="u">  
	       <tr>
	         <td><%  out.print(a++); %></td>
	         <td>${u.getName()}</td>
	          <td>${u.getEmail()}</td>
	         <td>${u.getContact()}</td>
	         <td class='subject'>${u.getSubject()}</td>
	         <td>${u.getDescripton()}</td>
	        
	         

	         
	         
	         <td   >
	         <a  type="button"  class="button-link" href='../viewenquiery?id=${u.getId()}'>Viewed</a></td>
	       </tr>
	      </c:forEach>
            </tbody>
</table>
        
        
       
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
