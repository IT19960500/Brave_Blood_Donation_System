package com.braveBloodDonation.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.braveBloodDonation.dao.donationCampManagemetDButill;

@MultipartConfig
@WebServlet("/campDetailsDeleteServlet")
public class campDetailsDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get values from input form
		int campId =  Integer.parseInt(request.getParameter("campId"));
		
		PrintWriter out = response.getWriter();
		
		//pass the value
		boolean isTrue = donationCampManagemetDButill.campDetailsDelete(campId);
		
		//check delete success or not
		if(isTrue == true) {
			out.print("done");
		}else {
			out.print("error");
		}
		
	}

}
