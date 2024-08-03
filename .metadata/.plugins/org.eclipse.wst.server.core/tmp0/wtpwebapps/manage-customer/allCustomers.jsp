<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.customer.model.Customer" %>
<%@ page import="com.customer.service.ICustomerService" %>
<%@ page import="com.customer.service.CustomerServiceImpl" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Link to Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<style>
    /*itional custom styles can be added here */
   .register_button{
    text-align: center;
    }
</style>

</head>
<body>
	


	<h1 class="text-center">All Customers</h1>

<table class="table table-bordered table-striped">
    <thead class="thead-dark">
        <tr>
            <th>Customer ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Address</th>
            <th>Mobile No</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
    </thead>

    <tbody>
        <% 
            ICustomerService iCustomerService = new CustomerServiceImpl();
            ArrayList<Customer> customerList = iCustomerService.getCustomer();
           
            for(Customer customer: customerList){
        %>
        <tr>
            <td><%= customer.getCustomerId()%></td>
            <td><%= customer.getFirstName() %></td>
            <td><%= customer.getLastName() %></td>
            <td><%= customer.getAddress() %></td>
            <td><%= customer.getMobileNo() %></td>

            <td>
                <form action ="<%= request.getContextPath() %>/GetCustomerServlet" method ="post">
                    <input type ="hidden" name = "customerId" value = "<%= customer.getCustomerId() %>">
                    <button type="submit" class="btn btn-primary">Edit</button>
                </form>
            </td>

            <td>
                <form action ="<%= request.getContextPath() %>/DeleteCustomerServlet" method ="post">
                    <input type ="hidden" name = "customerId" value = "<%= customer.getCustomerId() %>">
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </td>
        </tr>
        <% }
            
         %>
    </tbody>
</table>
<div class = "register_button">
	<form action="index.jsp" method="post">
		<button class="btn btn-danger">Add Customer</button>
	</form>
</div>
</body>
</html>