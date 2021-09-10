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
@WebServlet("/addCampCategoryServlet")
public class addCampCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get category in form
		String campCat = request.getParameter("catName");
		
		PrintWriter out = response.getWriter();
		
		//check the name is already exist 
		boolean isCheck = donationCampManagemetDButill.categoryAlreadyExists(campCat);
		
		//check camp name is already exist or not
		if(isCheck == true) {
			out.print("Camp category name is already exists");
		}else {
			
			//pass the data to method and check the add successfully
			boolean isTrue = donationCampManagemetDButill.addcampCategory(campCat);
			
			if(isTrue == true) {
				out.print("done");
			}else {
				out.print("error");
			}
		}
		
	}

}
