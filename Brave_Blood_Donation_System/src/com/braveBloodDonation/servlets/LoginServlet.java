package com.braveBloodDonation.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.braveBloodDonation.dao.UserDao;
import com.braveBloodDonation.entities.Message;
import com.braveBloodDonation.entities.User;

@MultipartConfig
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get the data from login form
				String username = request.getParameter("user_name");
				String password = request.getParameter("user_password");
				
				System.out.print(username);
				System.out.print(password);
				
		//create print writer statement
				PrintWriter out = response.getWriter();
				
		//create class type object and pass the values in to
				User user = UserDao.getUserDetailsByEmailaAndPassword(username, password);
				
				//if it is available of data create session 
				if(user != null) {
					
					System.out.println(user.getUsername());
					
					//create session
					HttpSession session = request.getSession();
					session.setAttribute("curretUser",user);
					response.sendRedirect("home.jsp");
					
				}else {
					
				
					//create an object in Message class and pass the values
					Message msg = new Message("Invalid User name or Password ! Try again...", "error", "alert alert-danger");
					
					//create session and pass the msg to the Login jsp page
					HttpSession session = request.getSession();
					session.setAttribute("msg", msg);
					
					response.sendRedirect("Login.jsp");
				}
	}

}
