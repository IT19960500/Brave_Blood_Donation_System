package com.braveBloodDonation.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.braveBloodDonation.dao.ContactUsDao;


@MultipartConfig
@WebServlet("/AddContactUsServlet")
public class AddContactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String contactUsQusType=request.getParameter("contactUsQusType");
		String contactUsQus=request.getParameter("contactUsQus");
		String contactUsName=request.getParameter("contactUsName");
		String contactUsEmail=request.getParameter("contactUsEmail");
		String contactUsPhone=request.getParameter("contactUsPhone");
		 
		
		System.out.println(contactUsQus);

		PrintWriter out = response.getWriter();
		
	
		
		boolean isSuccess=ContactUsDao.insertContactUs(contactUsQusType, contactUsQus, contactUsName,contactUsEmail,contactUsPhone);
		
		
		
		if(isSuccess==true) { 
			
			out.print("Success");
			
		}else {
			
			out.print("Error");
		}
	}

}
