package com.braveBloodDonation.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.braveBloodDonation.dao.NewsDao;

@MultipartConfig
@WebServlet("/newsDeleteServlet")
public class newsDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int newsID=Integer.parseInt(request.getParameter("nId"));
		System.out.println(newsID);
		
		boolean isTrue= NewsDao.deleteNews(newsID);
		PrintWriter out=response.getWriter();
		if(isTrue==true) {
			
			out.print("done");
		}else {
			
			out.print("error");
		}
	}

}
