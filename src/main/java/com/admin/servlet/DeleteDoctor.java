package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDoa;
import com.database.DBConnect;

@WebServlet("/deleteDoctor")
public class DeleteDoctor  extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int id=Integer.parseInt(req.getParameter("id"));
			
            DoctorDoa dao=new DoctorDoa(DBConnect.getConn());
			
			HttpSession session=req.getSession();
			
			if(dao.deleteDoctor(id))
			{
				session.setAttribute("succMsg", "Doctor Delete Successfully...");
				resp.sendRedirect("admin/view_doctor.jsp");
			}
			else
			{
				session.setAttribute("errorMsg", "Something Wrong On Server..");
				resp.sendRedirect("admin/view_doctor.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	
	

}
