package com.braveBloodDonation.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.braveBloodDonation.dao.AppointmentFormDao;
import com.braveBloodDonation.entities.Appointment;


/**
 * Servlet implementation class Register
 */
@WebServlet("/AppointmentForm")
public class AppointmentForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AppointmentForm() {
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
	
		String aname = request.getParameter("aname");
		String nic = request.getParameter("nic");
		String bloodgrp = request.getParameter("bloodgrp");
		String date = request.getParameter("adate");
		
		Appointment appointment = new Appointment(aname, nic, bloodgrp, date);
		
		AppointmentFormDao rDao = new AppointmentFormDao();
		String result = rDao.insert(appointment);
		response.getWriter().print(result);
		
	}
}
