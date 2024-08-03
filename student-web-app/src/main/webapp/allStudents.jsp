<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.student.model.Student" %>
<%@ page import="com.student.service.IStudentService" %>
<%@ page import="com.student.service.StudentServiceImpl" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Records</title>

<!-- Link to Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<style>
    /* Additional custom styles can be added here */
</style>
</head>
<body>
<h1 class="text-center">All Students</h1>

<table class="table table-bordered table-striped">
    <thead class="thead-dark">
        <tr>
            <th>Student ID</th>
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
            IStudentService iStudentService = new StudentServiceImpl();
            ArrayList<Student> studentList = iStudentService.getStudents();
        
            for(Student student: studentList){
        %>
        <tr>
            <td><%= student.getStudentId() %></td>
            <td><%= student.getFirstName() %></td>
            <td><%= student.getLastName() %></td>
            <td><%= student.getAddress() %></td>
            <td><%= student.getMobileNo() %></td>

            <td>
                <form action ="<%= request.getContextPath() %>/GetStudentServlet" method ="post">
                    <input type ="hidden" name = "studentId" value = "<%= student.getStudentId() %>">
                    <button type="submit" class="btn btn-primary">Edit</button>
                </form>
            </td>

            <td>
                <form action ="<%= request.getContextPath() %>/DeleteStudentServlet" method ="post">
                    <input type ="hidden" name = "studentId" value = "<%= student.getStudentId() %>">
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </td>
        </tr>
        <% } %>
    </tbody>
</table>
</body>
</html>
