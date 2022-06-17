package com.srs.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.srs.model.Student;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationController() {
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
		
		Student student;		
		
		String userId = request.getParameter("user_id");
		String password = request.getParameter("password");
		String password1 = request.getParameter("password1");
		String firstName = request.getParameter("first_name");
		String lastName = request.getParameter("last_name");
		String ssn = request.getParameter("ssn1") + request.getParameter("ssn2") + request.getParameter("ssn3");
		String email = request.getParameter("email");
		
		
		if(password != null && !password.equals(password1)) {
			request.getSession().setAttribute("error", "Passwords do not match");
			response.sendRedirect("regformA.jsp");
		}
		
		if(request.getSession().getAttribute("student") == null) {
			student = new Student();
			student.setUserId(userId);
			student.setFirstName(firstName);
			student.setLastName(lastName);
			student.setSsn(ssn);
			student.setEmail(email);
			
			request.getSession().setAttribute("student", student);
			
			request.getRequestDispatcher("regformB.jsp").forward(request, response);
		}
		else {
			String address = request.getParameter("address");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String zip = request.getParameter("zip_code");
			
			student = (Student) request.getSession().getAttribute("student");
			
			student.setAddress(address);
			student.setCity(city);
			student.setState(state);
			student.setZip(zip);
			
			response.sendRedirect("studentInfo.jsp");
		}

	}

}
