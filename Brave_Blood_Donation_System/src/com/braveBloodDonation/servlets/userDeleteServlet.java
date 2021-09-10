package com.braveBloodDonation.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.braveBloodDonation.dao.UserDao;

@MultipartConfig
@WebServlet("/userDeleteServlet")



public class userDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get values from input form
	String user_username =  request.getParameter("user_username");
		
		PrintWriter out = response.getWriter();
		
		//pass the value
		boolean isTrue = UserDao.userdetailsDelete(user_username);
		
		//check delete success or not
		if(isTrue == true) {
			out.print("done");
		}else {
			out.print("error");
		}
		
	}

}
