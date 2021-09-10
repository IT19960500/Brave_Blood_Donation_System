package com.braveBloodDonation.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.braveBloodDonation.dao.HealthDao;

@MultipartConfig
@WebServlet("/healthDeleteServlet")
public class healthDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int healthID=Integer.parseInt(request.getParameter("hId"));
		System.out.println(healthID);
		
		boolean isTrue= HealthDao.deleteHealth(healthID);
		PrintWriter out=response.getWriter();
		if(isTrue==true) {
			
			out.print("done");
		}else {
			
			out.print("error");
		}
	}

}
