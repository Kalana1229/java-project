<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.student.model.Student" %>
<%@ page import="com.student.service.IStudentService" %>
<%@ page import="com.student.service.StudentServiceImpl" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        padding: 20px;
    }

    h1 {
        text-align: center;
        color: #007bff;
    }

    form {
        background-color: #fff;
        border-radius: 20px;
        padding: 70px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        margin: 20px auto;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 20px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
        cursor: pointer;
        width: 100%;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <h1>Update Student</h1>
    <%
        String studentId = request.getParameter("studentId");
        IStudentService iStudentService = new StudentServiceImpl();
        ArrayList<Student> studentList = iStudentService.getStudentById(studentId);
    
        for(Student student: studentList){
    %>
    <form action="<%= request.getContextPath() %>/UpdateStudentServlet" method="post">
        <input type="hidden" name="studentId" value="<%= student.getStudentId() %>">
        First Name<input type="text" name="firstname" value="<%= student.getFirstName() %>">
        Last Name<input type="text" name="lastname" value="<%= student.getLastName() %>">
        Address<input type="text" name="address" value="<%= student.getAddress() %>">
        Mobile Number<input type="text" name="mobilenumber" value="<%= student.getMobileNo() %>">
        <input type="submit" value="Update">
    </form>
    <% } %>
</body>
</html>
