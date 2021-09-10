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
@WebServlet("/UpdateContactUsServlet")
public class UpdateContactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get the data from form
		int contactUsId=Integer.parseInt(request.getParameter("contactUsId"));
		String contactUsQusType= request.getParameter("contactUsQusType");
		String contactUsQus= request.getParameter("contactUsQus");
		String contactUsName= request.getParameter("contactUsName");
		String contactUsEmail= request.getParameter("contactUsEmail");
		String contactUsPhone= request.getParameter("contactUsPhone");
		String contactusStatus=request.getParameter("contactusStatus");
		System.out.println(contactUsQusType);
		

		PrintWriter out = response.getWriter();
		
			
			boolean isTrue = ContactUsDao.updateContactUs(contactUsId, contactUsQusType, contactUsQus, contactUsName, contactUsEmail,contactUsPhone,contactusStatus);
			
			//update success or not
			if(isTrue == true) {
				out.print("done");
			}else {
				out.print("error");
			}
		}
	}


