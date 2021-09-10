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
@WebServlet("/editCampCategoryServlet")
public class editCampCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//get the data from form
		int cid = Integer.parseInt(request.getParameter("c_id"));
		String catName = request.getParameter("c_name");

		PrintWriter out = response.getWriter();
		System.out.println(catName);
		//check the name is already exist 
		boolean isCheck = donationCampManagemetDButill.categoryAlreadyExists(catName);
		
		//check category name already exist or not  
		if(isCheck == true) {
			out.print("Donation Camp Category is already available");
		}else {
			
			boolean isTrue = donationCampManagemetDButill.updateCampCatgegoryDetails(cid, catName);
			
			//update success or not
			if(isTrue == true) {
				out.print("done");
			}else {
				out.print("error");
			}
		}
		
		
	}

}
