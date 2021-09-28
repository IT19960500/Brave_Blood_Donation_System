package com.braveBloodDonation.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.braveBloodDonation.dao.DonorProfileDao;


/**
 * Servlet implementation class UpdateDonor
 */
@MultipartConfig
@WebServlet("/updateDonor")
public class updateDonor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public updateDonor() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("donorUsername");
		String email = request.getParameter("donorEmail");
		String phone = request.getParameter("donorPhone");
		String address = request.getParameter("donorAddress");
		String occupation = request.getParameter("donorOccupation");
		String weight = request.getParameter("donorWeight");
		String height = request.getParameter("donorHeight");

		PrintWriter out = response.getWriter();

		boolean isTrue = DonorProfileDao.update(username, email, phone, address, occupation, weight, height);

		// update success or not
		if (isTrue == true) {
			out.print("done");
		} else {
			out.print("error");
		}

	}

}
