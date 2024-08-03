package com.student.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.student.model.Student;
import com.student.service.IStudentService;
import com.student.service.StudentServiceImpl;

/**
 * Servlet implementation class UpdateStudentServlet
 */
@WebServlet("/UpdateStudentServlet")
public class UpdateStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
response.setContentType("text/html");
		
		Student student = new Student();
		
		String studentId = request.getParameter("studentId");
		
		student.setStudentId(studentId);
		student.setFirstName(request.getParameter("firstname"));
		student.setLastName(request.getParameter("lastname"));
		student.setAddress(request.getParameter("address"));
		student.setMobileNo(request.getParameter("mobilenumber"));
		
	
		
		IStudentService istudentService = new StudentServiceImpl();
		
		istudentService.updateStudent(studentId,student);
		
		request.getSession().setAttribute("student",student);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/allStudents.jsp");
		dispatcher.forward(request, response);
	}

}

