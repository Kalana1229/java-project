<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Customer</title>
<style>
    /* CSS styles for form elements */
    body {
        background-color: #D6EAF8;
        font-family: Arial, sans-serif;
    }
    
    .form-container {
       max-width: 350px;
        margin: 20px auto;
        background-color: #D5F5E3;
        padding: 60px;
        border-radius: 20px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
       
    }
    
    input[type="text"] {
        width: calc(100% - 10px);
        padding: 10px;
        margin-bottom: 20px;
        border-radius: 20px;
        border: 1px solid #ccc;
    }
    
    input[type="submit"] {
        width: calc(100% - 10px);
        padding: 10px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    
    .h1 {
        color: #007bff;
        text-align: center;
    }
	.header {
  background-color: #273444;
  color: white;
  padding: 25px;
  display: flex;
  height:30px;
	}

.logo {
  flex: 1;
}

.title {
  flex: 3;
  text-align: center;
}

.move-text{
   
    margin-top: 5px; 
    margin-right: 520px;
}

.moved-text{
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
  padding: 5px 5px;
  margin-top: 4px;
  margin-bottom: 10px;
  margin-right: 2px;
  background: #ddd;
  font-size: 15px;
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

.footer {
    background-color: #1a1a2e;
    color: #fff;
    padding: px 0; /* Decrease padding */
    bottom: 5px; /* Place at the bottom */
    left: 0;
    width: auto;
    margin-top: 70px;
    height: 150px;
   
}


.footer h5 {
    color: #fff;
    font-size: 18px; /* Decrease font size */
    font-weight: 600;
    margin-bottom: 10px; /* Decrease margin */
}

.footer ul {
    list-style: none;
    padding-left: 0;
}

.footer ul li {
    margin-bottom: 5px; /* Decrease margin */
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
    padding-top: 0.5rem; /* Decrease padding */
    padding-bottom: 0.5rem; /* Decrease padding */
}

.footer .text-center {
    text-align: center;
}

.footer .copy {
    text-align: center;
    margin-top: 20px;
}

.footer .contact{
  margin-left:200px;
}


.footer .about{
  margin-left:1000px;
  margin-top:-130px;
}
.main_text {
    max-width: 20%;
    margin: 0 auto;
}

.main_text h1 {
    font-size: 3rem;
    margin-bottom: 30px;
    font-family: "Times New Roman", Times, serif;
   
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
  	
	</div>
	

	
 			<div class="main_text">
                <h2>CUSTOMER DETAILS</h2>
            </div>

		<div class="form-container">
		
           <form id="customerForm" action="<%= request.getContextPath()%>/AddCustomerServlet" method="post">
       			 First Name <input type="text" name="firstname" id="firstname"><br>
        		 Last Name <input type="text" name="lastname" id="lastname"><br>
        		 Address <input type="text" name="address" id="address"><br>
        		 Mobile Number <input type="text" name="mobileno" id="mobileno"><br>
        <input type="submit" value="Add Customer" onclick="return validateForm()"><br>
    </form>
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
	<script>
    function validateForm() {
        var firstName = document.getElementById("firstname").value;
        var lastName = document.getElementById("lastname").value;
        var address = document.getElementById("address").value;
        var mobileNo = document.getElementById("mobileno").value;

        if (firstName == "" || lastName == "" || address == "" || mobileNo == "") {
            alert("All fields must be filled out");
            return false;
        }

        // You can add more specific validation rules here, such as checking if mobile number is valid.

        return true;
    }
</script>

<script>
    // Function to enforce numeric input and limit to 10 digits
    function restrictMobileInput(event) {
        var input = event.target.value;
        
        // Remove any non-numeric characters
        var numericInput = input.replace(/\D/g, '');
        
        // Limit input to 10 digits
        var trimmedInput = numericInput.substring(0, 10);
        
        // Update the input field value
        event.target.value = trimmedInput;
    }
    
    // Get the mobile number input field
    var mobileInput = document.getElementById("mobileno");

    // Attach event listener to the "input" event for the mobile number input field
    mobileInput.addEventListener("input", restrictMobileInput);
</script>

</body>
</html>