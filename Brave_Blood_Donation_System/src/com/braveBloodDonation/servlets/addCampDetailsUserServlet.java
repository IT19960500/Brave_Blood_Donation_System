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
import com.braveBloodDonation.helper.EmailValidator;
import com.braveBloodDonation.helper.dateValidator;
import com.braveBloodDonation.helper.timeValidator;

@MultipartConfig
@WebServlet("/addCampDetailsUserServlet")
public class addCampDetailsUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get values from input form
		int campCategory =  Integer.parseInt(request.getParameter("campCategory"));
		String organizationName = request.getParameter("orgName");
		String campDate = request.getParameter("orgDate");
		String  campTime = request.getParameter("orgTime");
		String campAddress = request.getParameter("ordAddress");
		int exceptDonors = Integer.parseInt(request.getParameter("orgExpDonor"));
		String campArrangement = request.getParameter("orgArrangement");
		String organizerName =  request.getParameter("orgizerName");
		String organizerEmail =  request.getParameter("orgizerEmail");
		
		PrintWriter out = response.getWriter();
		
		boolean dateValid = dateValidator.validateJavaDate(campDate);
		boolean timeValid = timeValidator.validateJavaTime(campTime);
		boolean emailValid = EmailValidator.validateEmail(organizerEmail);
		
		//pass values
		boolean isTrue = donationCampManagemetDButill.addcampDetailsUsere(campCategory, organizationName, campDate, campTime, campAddress, exceptDonors, campArrangement, organizerName, organizerEmail);
		
		//check mail validate
		if(emailValid == false) {
			out.print("Plesae Email enter the correct format");
		}else {
		
			
			//check time validate
			if(timeValid == false) {
				out.print("Plesae Time enter the correct format");
			}else {
				
				//check date validate
				if(dateValid == false){
					out.print("Plesae Date enter the correct format");
				}else {
					
					//check insert success or not
					if(isTrue ==  true) {
						out.print("done");
					}else {
						out.print("error");
					}
					
				}
			}
		}	
		
		
		
		
		
	}

}
