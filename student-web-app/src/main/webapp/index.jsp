<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    /* CSS styles for form elements */
    body {
        background-color: #f0f0f0;
        font-family: Arial, sans-serif;
    }
    
    .form-container {
       max-width: 400px;
        margin: 20px auto;
        background-color: #fff;
        padding: 70px;
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
    
    h1 {
        color: #007bff;
        text-align: center;
    }
</style>
</head>
<body>

   <div class="form-container">
    <h1>Attendance Sheet</h1>
    <form action="<%= request.getContextPath() %>/AddStudentServlet" method="post">
        First Name <input type="text" name="firstname"><br>
        Last Name <input type="text" name="lastname"><br>
        Address <input type="text" name="address"><br>
        Mobile Number <input type="text" id="mobileNumber" name="mobileno"><br>
        <input type="submit" value="Add Student"><br>
    </form>
</div>
 
 
<script>
    // Function to validate mobile number format
    function validateMobileNumber() {
        var mobileNumber = document.getElementById('mobileNumber').value;
        var pattern = /^\d{10}$/; // Regular expression for 10-digit mobile number

        if (!pattern.test(mobileNumber)) {
            alert("Please enter a valid 10-digit mobile number.");
            return false;
        }
        return true;
    }

    // Event listener for form submission
    document.querySelector('.form-container form').addEventListener('submit', function(event) {
        if (!validateMobileNumber()) {
            event.preventDefault(); // Prevent form submission if mobile number is invalid
        }
    });
</script>
   
    
</body>
</html>
