<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Vehicle Service & Fuel Station Management</title>

<style>
body, html {
  margin: 0;
  padding: 0;
  height: 100%;
  display: flex;
  flex-direction: column;
}

.header {
  background-color: #273444;
  color: white;
  padding: 20px;
  display: flex;
  height: 80px;
}

.logo {
  flex: 1;
}

.title {
  flex: 3;
  text-align: center;
}

.move-text {
  margin-top: 5px; 
  margin-right: 520px;
}

.moved-text {
  margin-top: 10px; 
  margin-right: 250px;
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

@media screen and (max-width: 600px) {
  .navbar a, .search-container {
    float: none;
    display: block;
    text-align: left;
  }
  
  .search-container {
    margin-top: 8px;
  }
}

.main-content {
  flex: 1;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 20px;
  background-image: url('img/blurred-car-repair-shop.jpg'); /* Add your background image here */
  background-size: cover;
  background-position: center;
}

.card-container {
  display: flex;
  justify-content: space-around;
  width: 100%;
  max-width: 1200px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  transition: 0.3s;
  width: 30%;
  border-radius: 10px;
  text-align: center;
  margin: 20px;
  padding: 80px;
  background-color: LightSlateGray;
  color: white;
  cursor: pointer;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

.card h3 {
  margin-top: 10px;
  font-size: 21px; /* Adjust the font size */
  color: HoneyDew; /* Adjust the text color */
  font-weight: bold; /* Make the text bold */
}

.footer {
  background-color: #1a1a2e;
  color: #fff;
  padding: 20px 0;
  width: 100%;
  margin-top: auto;
}

.footer h5 {
  color: #fff;
  font-size: 18px;
  font-weight: 600;
  margin-bottom: 10px;
}

.footer ul {
  list-style: none;
  padding-left: 0;
}

.footer ul li {
  margin-bottom: 5px;
}

.footer a {
  color: #fff;
  text-decoration: none;
}

.footer a:hover {
  color: #ccc;
}

.footer p {
  margin-bottom: 0;
}

.footer .py-3 {
  padding-top: 0.5rem;
  padding-bottom: 0.5rem;
}

.footer .text-center {
  text-align: center;
}

.footer .copy {
  text-align: center;
  margin-top: 20px;
}

.footer .contact {
  margin-left: 200px;
}

.footer .about {
  margin-left: 1000px;
  margin-top: -130px;
}
</style>

</head>
<body>
	
<div class="header">
  
  <div class="title">
    <h1 class="move-text">ServicePulse</h1>
    <h2 class="moved-text">Welcome To ServicePulse! Online Vehicle and Fuel Management System</h2>
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

<div class="main-content">
  <div class="card-container">
    <div class="card" onclick="window.location.href='index.jsp'">
      <h3>Add Customer Details</h3>
    </div>
    <div class="card" onclick="window.location.href='AddVehicleDetails.jsp'">
      <h3>Add Vehicle Details</h3>
    </div>
    <div class="card" onclick="window.location.href='service.jsp'">
      <h3>Manage Services</h3>
    </div>
  </div>
</div>

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