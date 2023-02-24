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
import com.entity.Doctor;

@WebServlet("/doctorLogin")
public class DoctorLogin  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		HttpSession session = req.getSession();

		DoctorDoa doa=new DoctorDoa(DBConnect.getConn());
		Doctor doctor=doa.login(email, password);

		if (doctor != null) {
			session.setAttribute("doctObj", doctor);
			resp.sendRedirect("doctor/doctorindex.jsp");
		} else {
			session.setAttribute("errorMsg", "invalid email & password");
			resp.sendRedirect("doctor_login.jsp");
		}

	}

	
      
	
}
