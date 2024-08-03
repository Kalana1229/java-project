package com.customer.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.model.Customer;
import com.customer.service.CustomerServiceImpl;
import com.customer.service.ICustomerService;


/**
 * Servlet implementation class AddCustomerServlet
 */
@WebServlet("/AddCustomerServlet")
public class AddCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCustomerServlet() {
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
		
		Customer customer = new Customer();
		
		customer.setFirstName(request.getParameter("firstname"));
		customer.setLastName(request.getParameter("lastname"));
		customer.setAddress(request.getParameter("address"));
		customer.setMobileNo(request.getParameter("mobileno"));
		
		ICustomerService icustomerService = new CustomerServiceImpl();
		icustomerService.addCustomer(customer);
		
		request.setAttribute("customer",customer);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/allCustomers.jsp");
		dispatcher.forward(request, response);
		
	}

}
