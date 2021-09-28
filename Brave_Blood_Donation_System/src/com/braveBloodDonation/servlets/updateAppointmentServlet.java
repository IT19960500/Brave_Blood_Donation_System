package com.braveBloodDonation.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.braveBloodDonation.dao.updateAppointmentDao;

/**
 * Servlet implementation class updateAppointmentServlet
 */
@MultipartConfig
@WebServlet("/updateAppointmentServlet")
public class updateAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateAppointmentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		int appointmentId = Integer.parseInt(request.getParameter("appointmentId"));
		String nic= request.getParameter("nic");
		String name= request.getParameter("name");
		String bloodgrp= request.getParameter("bloodgrp");
		String date=request.getParameter("date");
		String status=request.getParameter("status");
		
		

		PrintWriter out = response.getWriter();
				
					
		boolean isTrue = updateAppointmentDao.updateAppointment(appointmentId, nic, name, bloodgrp, date,status);
			
			//update success or not
			if(isTrue == true) {
				out.print("done");
			}else {
				out.print("error");
			}
		}

		
	}


