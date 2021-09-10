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
import com.braveBloodDonation.entities.organizeDonationCamp;

@MultipartConfig
@WebServlet("/confirmCampDetailsServlet")
public class confirmCampDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get values from input form
		int orgId =  Integer.parseInt(request.getParameter("orgId"));
		
		PrintWriter out= response.getWriter();
		
		organizeDonationCamp o = donationCampManagemetDButill.getConfimCampDetailsByOrgId(orgId);
		
		//get values and assign the variable
		
		int campCategory = o.getCampCat(); 
		String organizationName = o.getOrganizationName();
		String campDate = o.getCampDate();
		String  campTime = o.getCampTime();
		String campAddress = o.getAddress();
		String location = "";
		int exceptDonors = o.getExceptDonors();
		String campArrangement = o.getArrangement();
		String organizerName =  o.getOrganizerName();
		String organizerEmail =  o.getOrganizerEmail();
		
		
		//pass the values and insert the values 
		boolean isTrue = donationCampManagemetDButill.addcampDetails(campCategory, organizationName, campDate, campTime, campAddress, location, exceptDonors, campArrangement, organizerName, organizerEmail);
		
		//delete data in organization confirm table
		boolean isDelete = donationCampManagemetDButill.organizationCampDetailsDelete(orgId);
		
		//check insert and delete data
		if(isTrue == true && isDelete ==  true) {
			out.print("done");
		}else {
			out.print("eroor");
		}
		
		
	}

}
