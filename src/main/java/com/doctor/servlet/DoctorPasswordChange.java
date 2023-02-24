package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDoa;
import com.database.DBConnect;

@WebServlet("/doctChangePassword")
public class DoctorPasswordChange extends HttpServlet  {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int uid=Integer.parseInt(req.getParameter("uid"));
		String oldPassword=req.getParameter("oldPassword");
		String newPasword=req.getParameter("newPassword");
		
		DoctorDoa dao=new DoctorDoa(DBConnect.getConn());
		HttpSession session = req.getSession();
		
		if(dao.checkoldPassword(uid, oldPassword)) 
		{
			if(dao.changePassword(uid, newPasword))
			{
				session.setAttribute("succMsg", "Password Change Succesfully");
				resp.sendRedirect("doctor/edit_profile.jsp");
			}
			
			else
			{
				session.setAttribute("errorMsg", "Sometthing Wrong On Server");
				resp.sendRedirect("doctor/edit_profile.jsp");
			}
		}
		else
		{
			session.setAttribute("errorMsg", "Old Password Incorrect");
			resp.sendRedirect("doctor/edit_profile.jsp");
		}
		
	}
	

}
