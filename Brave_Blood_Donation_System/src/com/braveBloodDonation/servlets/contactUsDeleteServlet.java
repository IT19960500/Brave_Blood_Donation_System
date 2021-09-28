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
@WebServlet("/contactUsDeleteServlet")
public class contactUsDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int contactUsId=Integer.parseInt(request.getParameter("cId"));
		System.out.println(contactUsId);
		
		boolean isTrue= ContactUsDao.deleteContactUs(contactUsId);
		PrintWriter out=response.getWriter();
		if(isTrue==true) {
			
			out.print("done");
		}else {
			
			out.print("error");
		}
	}

}
