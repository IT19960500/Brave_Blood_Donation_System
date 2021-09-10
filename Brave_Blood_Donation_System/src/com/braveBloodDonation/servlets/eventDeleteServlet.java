package com.braveBloodDonation.servlets;
 
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.braveBloodDonation.dao.EventDao;


@MultipartConfig
@WebServlet("/eventDeleteServlet")
public class eventDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int eventID=Integer.parseInt(request.getParameter("eId"));
		System.out.println(eventID);
		
		boolean isTrue= EventDao.deleteEvent(eventID);
		PrintWriter out=response.getWriter();
		if(isTrue==true) {
			
			out.print("done");
		}else {
			
			out.print("error");
		}
	}

	}
