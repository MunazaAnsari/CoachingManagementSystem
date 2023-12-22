<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <title>Hello, world!</title>
        <style>
            /* Custom styles for the dashboard */
            .body {
                background-image: url("images/image.jpg");
                background-repeat: no-repeat;
                background-size: 103% auto ;
               
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
           
            /* Main content */
            .container {
                margin-top: 20px;
                padding: 20px;
            }

            /* Footer styles */
            .footer {
            	margin-top:50%;
                position: fixed;
                left: 0;
                bottom: 0;
                width: 100%;
                height: 14%;
                background-color: #4f4638;
                color: #fff;
            }
            
            hr{
            
            margin-top:  15px;
            margin-bottom:  30px;
            border-color: black;
            
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
                width: 40%; /* Adjust the width as needed */
                margin-left: 0;
                margin-bottom: 50px;
                margin-top: 0; /* Center the container horizontally */
                padding: 10px; /* Add padding inside the container */
                background-color: #968871; /* Container background color */
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                color: #f5f0e9; /* Add a subtle box shadow */
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

.para {

                text-align: left;
                width: 45%; /* Adjust the width as needed */
                margin-left: 15%;
                
          /* Center the container horizontally */
              /* Add padding inside the container */
                background-color: trasparent; /* Container background color */
             
                color: #f5f0e9;

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
.registration-form .column {
    flex: 1;
    padding: 10px 10px;
    box-sizing: border-box;
}
            .registration-form h2 {
                text-align: left;
                margin-bottom: 10px;
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
            .input-group select , textarea{
                width: 100%;
                padding: 8px;
                border-radius: 3px;
                border: 1px solid #ccc;
                background-color: transparent;
                color: #696154;
            }
            
            .registration-form .formp {
            text-align: left;
            color :#7a7874;
            background-color: transparent;
            margin-bottom: 15px;
            
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
            
            
            
            
            
            
            .question {
    background-color: #756c5d;
    padding: 5px;
    border-bottom: 1px solid #ddd;
    cursor: pointer;
    display: block;
}

.answer {
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.3s ease;
}

.accordion-checkbox {
    display: none;
}

.accordion-checkbox:checked ~ .answer {
     max-height: 100px; /* Set a height or value for the answer to expand */
}
.accordion-checkbox:checked ~ .question::after {
    transform: translateY(-50%) rotate(-180deg);
}
.arrow {
display:inline;
	margin-top:50px	
    float: right;
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
            <a href="studentregister.jsp">Register</a>
            <a href="#">Contact</a>
        </div>
        <div class="paracontainer">
                <div class="para">
        <p>LET'S TALK ABOUT YOUR TOMORROW TOGETHER TODAY AND FIND OUT WHAT YOU WANT FOR YOUR FUTURE CAREER .
        <p>you can contact my dear team by phone or WhatsApp on +49 157 97669 99 or send us an email !</p>
        </div>
        </div>

        <!-- Main content -->
        <div class="container">
        
        

            <div class="row"></div>
            <div class="row">
                <div class="col"></div>
                <div class="col">
                    <!-- Login Form -->

                    <div class="registration-form">
                         <h2> Your Details </h2> 
                        <p class="formp">Let us know how to get back to you.</p>
                        
                        <hr>
                        
                        <form action="enquiery" method="POST">
                        <div class="row">
                        <div class="form-column">
                            <div class="input-group">
                                <label for="name">Name</label>
                                <input type="text" id="name" name="name" placeholder="Enter your name" required />
                            </div>
                            <div class="form-column">
                            <div class="input-group">
                                <label for="email">Email</label>
                                <input type="email" id="email" name="email" placeholder="Enter your email" required />
                            </div>
                            
                            </div>
                            </div>
                         
                        <div class="form-column">
                            <div class="input-group">
                                <label for="subject">Subject</label>
                                <input type="text" id="subject" name="subject" placeholder="Enter your name" required />
                            </div>
                            <div class="form-column">
                            <div class="input-group">
                                <label for="contatc">Contact</label>
                                <input type="number" id="contatc" name="contact" placeholder="Enter your email" required />
                            </div>
                            </div>
                            </div>
                            </div>
                            
                          <h2> How can we help? </h2> 
                        <p class="formp">Feel free to ask a question or simply leave a comment</p>
                                                        
                            <div class="row">
                             
                              <div class="form-column">
                              <div class="input-group">
                              <label for="comments">Comments / Questions *</label>
                            <textarea id="w3review" name="description" rows="4" placeholder="Type your text here..." cols="50"></textarea>
                          </div>
                          
                          </div>
                          
                     </div>
                            
                            
                            <div class="row">
                             <div class="form-column"></div>
                              <div class="form-column">
                            <button type="submit">Send</button>
                          
                          
                          </div>
                           <div class="form-column"></div>
                     </div>
                  
                      
                        </form>
                    </div>

                    <!-- Add more content here -->
                </div>
            </div>
            
            
            
            </div>
        <div class="paracontainer">
		<div class="para">
		<p>CONTACT</p>
		<p>If you are seriously interested in working together, first have a free preliminary talk with your coach. 
		In this session you get to know each other and 
		clarify how working together suits both sides and how your coach can support you perfectly with your topic.</p>
		<div class="row" >
		
		  <div class="column">
          
           <label for="name"><p>CONTACT NO</p></label>
           <p>9823198731</p>
		</div>
		
	 <div class="column">
         
           <label for="name"><p>EMAIL</p></label>
			<p>institutename@institute.com</p>
		</div>
		
			 <div class="column">
          
           <label for="name"><p>ADRESSE</p></label>
			<p>Infinity Tower , itpark , Nagpur</p>
		</div>
		


		</div>
		<div class="row" >
		<div class="accordion">
    <input type="checkbox" id="question1" class="accordion-checkbox">
    <label for="question1" class="question">
        <p> <i class="arrow fas fa-chevron-down"></i> What's the first step?</p>
        
    </label>
    <div class="answer">
        <p>Contact us by phone or email. In a free and non-binding initial telephone call  
        , we can clarify the rough details about the courses</p>
    </div>
    <!-- Add more questions and answers as needed -->
</div>

  </div>
  		<div class="row" >
		<div class="accordion">
    <input type="checkbox" id="question2" class="accordion-checkbox">
    <label for="question2" class="question">
        <p>  <i class="arrow fas fa-chevron-down"></i> In what context does business coaching take place?</p>
        
    </label>
    <div class="answer">
        <p>Coaching can take place in our coaching classes or at your place.we also offer  online coaching on various data 
        protection-compliant online platforms.
         Ultimately, coaching is also possible in a hybrid form, i.e. a change between online and face-to-face.</p>
    </div>
    <!-- Add more questions and answers as needed -->
</div>

  </div>
    		<div class="row" >
		<div class="accordion">
    <input type="checkbox" id="question3" class="accordion-checkbox">
    <label for="question3" class="question">
        <p>  <i class="arrow fas fa-chevron-down"></i>  What is the scope of coaching?</p>
        
    </label>
    <div class="answer">
        <p>A coaching usually lasts 4-6 months . It varies according to the course chosen</p>
    </div>
    <!-- Add more questions and answers as needed -->
</div>

  </div>
    		<div class="row" >
		<div class="accordion">
    <input type="checkbox" id="question4" class="accordion-checkbox">
    <label for="question4" class="question">
        <p> <i class="arrow fas fa-chevron-down"></i>  Do you have placement gaurantee</p>
        
    </label>
    <div class="answer">
        <p>We provide extensive training and support to enhance employability.
         While we can't guarantee placements, our programs aim to prepare students for job opportunities.</p>
    </div>
    <!-- Add more questions and answers as needed -->
</div>

  </div>
  
		<p></p>
		<p></p>
		<p>heyy</p>
		
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
