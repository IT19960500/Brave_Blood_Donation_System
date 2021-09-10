package com.braveBloodDonation.servlets;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.braveBloodDonation.dao.UserDao;
import com.braveBloodDonation.entities.User;
import com.braveBloodDonation.helper.EmailValidator;


@MultipartConfig
@WebServlet("/userEditServlet")


public class userEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get value from input
		
		String user_fname = request.getParameter("user_fname");
		String user_lname = request.getParameter("user_lname");
		String user_email = request.getParameter("user_email");
		String user_nic = request.getParameter("user_nic");
		String user_dob = request.getParameter("user_dob");
		String user_gender = request.getParameter("user_gender");
		String user_weight = request.getParameter("user_weight");
		String user_height =  request.getParameter("user_height");
		String user_username =  request.getParameter("user_username");
		String user_password =  request.getParameter("user_password");
		String userconPassword =  request.getParameter("confirmpassword");
		
		PrintWriter out = response.getWriter();
		
		
		boolean emailValid = EmailValidator.validateEmail(user_email);
		
		
		
		//check username validate
		if(emailValid == false) {
			out.print("Plesae enter correct email");
		
		}else {
			
			//check email validate
			
				
				//pass the value
				boolean isTrue = UserDao.saveUser(user_fname, user_lname, user_email, user_nic, user_dob, user_gender, user_weight, user_height, user_username, user_password, userconPassword);
				
				//check if it is insert or not
				if(isTrue == true) {
					out.print("done");
				}else {
					out.print("error");
				}
				
			}
			
		
	}

}
