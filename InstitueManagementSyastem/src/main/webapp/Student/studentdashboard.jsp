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
            justify-content: center;
                height: 65%;
                width: 60%; /* Adjust the width as needed */
                margin: 4% 24%; /* Center the container horizontally */
                padding: 10px; /* Add padding inside the container */
                 background-image: url("../images/studentdb7.jpg");
                background-repeat: no-repeat;
                background-size: cover;/* Container background color */
                 /*box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);  Add a subtle box shadow */
            }
            
            .head h1 {
            
          
            color : #878786;
            text-align:center;
            font-size: 200%;
            
            
            }
            .head {
       
            width:40%;
            height:15%;
             justify-content: center;
            margin-left:8%;
            margin-top:2%;
            padding:5px;
                                    
            }
            
           .container  h2{
            
            color : #878786;
            margin-left :15%;

            font-size: 150%;
            display : inline;
            }
            
            .container  p{
            display : inline;
            color : #878786;
            
           
            margin-left :5%;
            font-size: 150%;
            
            }
            .container .margin{
            
            margin-top:20px;
             
            }

            /* Style for the vertical navbar */
			            
            .vertical-nav .current  {
            
                background-color: #d9dedc;
                color: #403c36;
            
            }
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
                <li class="current"><a href='studentdashboard.jsp?email=${list1.getSemial()}'>Dashboard</a></li>
                
                <li><a href='adddetails.jsp?email=${list1.getSemial()}'>Add Details</a></li>
                
                <li><a href='../courseselection?email=${list1.getSemial()}'>Course details</a></li>
                <li><a href='seeevents.jsp?email=${list1.getSemial()}'>See Events</a></li>

                <li><a href="../studentlogout">Logout</a></li>
            </ul>
        </nav>

        <div class="container">
        
		<div class="head">
		
		   <h1>Hello ${list1.getSname()}</h1>
		
		</div>
        
     
        <div class = "margin">
			<h2> Email : </h2>
        	<p> ${list1.getSemial()} </p>
        </div>
		<div class = "margin">
			<h2> Contatc : </h2>
        	<p> ${list1.getScontact()} </p>
        </div>
        <div class = "margin">
		<h2> Dob : </h2>
        <p> ${list1.getSdob()} </p>
             </div>
             <div class = "margin">
		<h2> Address : </h2>
        <p> ${list1.getSaddress()}</p>
		</div>
        <div class = "margin">
        <h2> Pincode : </h2>
        <p> ${list1.getSpin()}</p></div>
        <div class = "margin">
         <h2> Fees Paid : </h2>
        <p> ${list1.getSfpaid()} </p>
        </div>
              <div class = "margin">   <h2> Fees Pending : </h2>
        <p> ${list1.getSfpending()} </p>
        </div>
    
        
        </div>

        <!-- Main content -->

        <!-- Login Form -->

        <!-- Footer -->

    </body>
</html>
