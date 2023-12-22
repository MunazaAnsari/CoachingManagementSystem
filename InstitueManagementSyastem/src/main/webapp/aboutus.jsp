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

            .navbar a:hover {
                color: #878684;
                font-size: 35px; /* Hovered text color */
            }
                        .navbar .last  {

                color : #75746b;

            }
            /* Main content */
.container {
 
    display: flex;
    align-items: center;
    margin-top: 20px;
    
    padding: 1%;
    width: 70%; 
       background-color: #968871;
}

.image {
 
 width: 350px; 
    flex: 0 0 auto;
    padding: 0; /* Prevents the image from growing */
     /* Adds space between image and content */
}

.image img {

    max-width: 100%; /* Ensures the image doesn't exceed its container */
    height:auto;
    margin:0 /* Maintains aspect ratio */
}

       .content {
            height: 265px;
            flex: 1;
            position: relative;
            margin:0;
            padding:0;
          
        }

.content h2 {

    flex: 1;
    background-color: trasnparent;
    color: #f5f0e9;
margin-left:30%;
       text-align: centre;
       
   
}
.content ul{

color: #f5f0e9;
}

        .content p {
            display: block;
            font-size: 100%;
            text-align: left;
            color: #f5f0e9; /* Set p tag text color to black */
            width: 100%; /* Adjust the width of the p tag */
            z-index: 0;
            margin-left:0px;
            padding:1%;
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
            
            
.paracontainer{
				 justify-content: center;
 				width: 99%; /* Adjust the width as needed */
                margin-left: 0;
                margin-bottom: 50px;
                margin-top: 1%; /* Center the container horizontally */
                padding: 1%; /* Add padding inside the container */
                background-color: #968871;

}
.para p {

text-align: left;
margin-bottom: 15px;

}

.paracontainer .row{

    display: flex;
    
    justify-content: space-between;
}

.paracontainer .column{

     flex: 1;
    padding: 10px 10px;
    box-sizing: border-box;
}
            
        </style>
    </head>
    <body class="body">
        <!-- Navbar -->
        <div class="navbar">
        <div class="navtext"><h1>ItInfinity</h1></div>
            <a href="index.jsp">Home</a>
            <a href="#">About US</a>
            <a href="adminlogin.jsp">Admin</a>
            <a href="studentlogin.jsp">Student</a>
            <a href="studentregister.jsp">Register</a>
            <a class="last" href="contact.jsp">Contact</a>
        </div>

        <!-- Main content -->
        
                
                <div class="paracontainer">
                <div class="para">
        <p> OUR VISION 
        <p>To empower aspiring minds with cutting-edge technological education, fostering innovation, and 
        shaping future industry leaders in the realm of IT.</p>
        </div>
        </div>
  
<div class="container">
    <div class="content">
    <h2>   Our Mission</h2>
     
        <!-- Your existing content here -->
        <ul>
        
        <li><p>Education Excellence: Deliver high-quality, comprehensive IT education, merging theoretical knowledge with practical application.</p>
        <li><p>Career Advancement: Equip students with skills and expertise that pave the way for rewarding careers and industry relevance.</p>
        
        <li><p>Community Engagement: Engage with the IT community to create meaningful collaborations, networking opportunities, and knowledge-sharing platforms</p>
        
        </ul>
        

    </div>

    <div class="image">
 
        <img src="images/mission3.jpg" alt="Image Description">
        
       
    </div>
    


</div>

            <!-- Add more content here -->


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
