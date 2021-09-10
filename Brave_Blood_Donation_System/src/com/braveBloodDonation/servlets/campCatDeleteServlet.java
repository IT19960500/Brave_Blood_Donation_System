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
@WebServlet("/campCatDeleteServlet")
public class campCatDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get value from form
		int cid = Integer.parseInt(request.getParameter("cId"));
		
		PrintWriter out = response.getWriter();
		
		//pass the value to db utill class
		boolean isTrue = donationCampManagemetDButill.campCategoryDelete(cid);
		
		//check if it is success or not
		if(isTrue == true) {
			
			out.print("done");
		}else {
			out.print("error");
		}
		
	}

}
