<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

/* CSS for the textile management system website */

/* Resetting default browser styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
}

section {
    padding: 50px 0;
    text-align: center;
}

.main_text {
    max-width: 600px;
    margin: 0 auto;
}

.main_text h1 {
    font-size: 3rem;
    margin-bottom: 20px;
    font-family: "Times New Roman", Times, serif;
   
}

.main_text p {
    font-size: 1.2rem;
    color: #000000;
    text-align: left;
     font-family: "Times New Roman", Times, serif;
}

.main_image img {
    max-width: 400px;
    height: auto;
    border-radius: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
   
}

.row {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    margin-top: 50px;
}

.column {
    flex-basis: 30%;
    margin-bottom: 30px;
}

.card {
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    overflow: hidden;
}

.card img {
    width: 100%;
    height: auto;
}

.container {
    padding: 20px;
    text-align: center;
}

.container h2 {
    font-size: 1.5rem;
    margin-bottom: 10px;
}

.container p.title {
    font-size: 1.2rem;
    color: #666;
    margin-bottom: 5px;
}

.container h4 {
    font-size: 1.2rem;
}

.button {
    display: inline-block;
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.button:hover {
    background-color: #0056b3;
}

.header {
  background-color: #273444;
  color: white;
  padding: 20px;
  display: flex;
  align-items: center; /* Align items vertically */
}

.logo {
  flex: 1;
}

.title {
  flex: 3;
  text-align: center;
}

.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}

.navbar a:hover {
  background-color: #ddd;
  color: black;
}

.search-container {
  float: right;
}

.search-container input[type=text] {
  padding: 6px;
  margin-top: 8px;
  margin-bottom: 8px;
  margin-right: 16px;
  border: none;
}

.search-container button {
  padding: 6px 10px;
  margin-top: 8px;
  margin-bottom: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 14px;
  border: none;
  cursor: pointer;
}
.footer {
    background-color: #1a1a2e;
    color: #fff;
    padding: 5px 0;
}

.footer .container {
    display: flex;
    justify-content: space-between; /* Aligns the content to the left and right */
}

.footer .contact {
    flex: 1; /* Takes up remaining space */
    text-align: left; /* Align the content to the left */
}

.footer .about {
    flex: 1; /* Takes up remaining space */
    text-align: right; /* Align the content to the right */
}

.footer h5 {
    font-size: 25px;
    font-weight: 500;
    margin-bottom: 15px;
}

.footer ul {
    list-style: none;
    padding-left: 0;
}

.footer ul li {
    margin-bottom: 10px;
}

.footer a {
    color: #fff;
    text-decoration: none;
}

.footer a:hover {
    color: #ccc;
}

.footer .copy {
    text-align: center;
    margin-top: 10px;
}


</style>
</head>
<body>
		<div class="header">
 			
  			<div class="title">
    		
    			<h3 class="moved-text">Welcome To ServicePulse! Online Vehicle and Fuel Management System</h3>
 			 </div>
		</div>

	<div class="navbar">
  		<a href="#home">Home</a>
  		<a href="#about">About Us</a>
  		<a href="#branches">Branches</a>
  		<a href="#packages">Packages</a>
  	<div class="search-container">
    	<form action="/search" method="get">
      		<input type="text" placeholder="Search..." name="search">
      		<button type="submit">Search</button>
    	</form>
  		</div>
	</div>

	<section>
    <div class="main" id="Home">
        <div class="main_content">
            <div class="main_text">
                <h1>Branch Network</h1>
                <p>
                    High-quality vehicle servicing, maintenance, and repairs for all makes and models.
                    At guaranteed affordable quality with a personal touch. By one of the largest independent workshop SriLanka in the world.
                                  That's Bosch Car Service!
                </p>
            </div>
            </div>
        </div>
  

    <div class="row">
        <div class="column">
            <div class="card">
                <img src="Image/1.jpg" alt="Jane" style="width:100%">
                <div class="container">
                    <h2>DELKANDA SERVICEPULSE GRAND 1</h2>
                    <p class="title">Delkanda ServicePulse Grand 103. Old Kesbewa Road, Gangodawila</p>
                </div>
            </div>
        </div>

        <div class="column">
            <div class="card">
                <img src="Image/2.jpg" alt="Mike" style="width:100%">
                <div class="container">
                    <h2>GAMPAHA SERVICEPULSE GRAND 1</h2>
                    <p class="title">Gampaha ServicePulse Grand 100. Old asgiriya Road, Gampaha</p>
                </div>
            </div>
        </div>

        <div class="column">
            <div class="card">
                <img src="Image/3.jpg" alt="John" style="width:100%">
                <div class="container">
                    <h2>KATUBEDDA SERVICEPULSE GRAND 1</h2>
                    <p class="title">ServicePulse Katubedda Fast Fit 244 Galle Rd, Moratuwa, Sri Lanka</p>
                </div>
            </div>
        </div>
		
        <div class="column">
            <div class="card">
                <img src="Image/4.jpg" alt="John" style="width:100%">
                <div class="container">
                    <h2>KANDY SERVICEPULSE GRAND 1</h2>
                    <p class="title">Kandy Grand 1 279 Kandy Rd, Gampola, Sri Lanka</p>
                </div>
            </div>
        </div>

        <div class="column">
            <div class="card">
                <img src="Image/5.jpg" alt="John" style="width:100%">
                <div class="container">
                    <h2>COLOMBO SERVICEPULSE GRAND 1</h2>
                    <p class="title">ServicePulse Colombo Premire 340 Park Rd</p>
                </div>
            </div>
        </div>

        <div class="column">
            <div class="card">
                <img src="Image/6.jpg" alt="John" style="width:100%">
                <div class="container">
                    <h2>Moratuwa SERVICEPULSE Grand 1</h2>
                    <p class="title"> Colombo Premire 340 Park Rd,340 Park Rd, Moratuwa</p>
                </div>
            </div>
        </div>
    </div>
</section>

<footer class="footer">
    <div class="container">
        
            <div class="contact"> 
                <h5>Contact Us</h5>
                <ul class="list-unstyled">
                    <li><a href="#">Email: info@servicepulse.com</a></li>
                    <li><a href="#">Phone: 011-2222211</a></li>
                    <li><a href="#">Address: No.34, Flower Road, Colombo 5</a></li>
                </ul>
            </div>
            <div class="about"> 
                <h5>About Us</h5>
                <ul class="list-unstyled">
                    <li><a href="#">Company Overview</a></li>
                    <li><a href="#">Our Team</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                </ul>
            </div>
        </div>
  
    <div class="copy">
        <p>&copy; 2023 ServicePulse. All rights reserved.</p>
    </div>
</footer>
	
     
        
</body>
</html>