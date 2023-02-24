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

@WebServlet("/doctorUpdateProfile")
public class EditProfile extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fullName=req.getParameter("fullname");
			String dob=req.getParameter("dob");
			String qualifiction=req.getParameter("qualification");
			
			String spec=req.getParameter("spec");
			
			String email=req.getParameter("email");
			String mobno=req.getParameter("mobno");
			
			
			int id=Integer.parseInt(req.getParameter("id"));
			
			Doctor d=new Doctor(id,fullName, dob, qualifiction, spec, email, mobno, "");
			
			DoctorDoa dao=new DoctorDoa(DBConnect.getConn());
			
			HttpSession session=req.getSession();
			
			if(dao.editDoctorProfile(d))
			{
				dao.getDoctorById(id);
				Doctor updateDoctor=dao.getDoctorById(id);
				session.setAttribute("succMsgd", "Doctor Update Successfully...");
				resp.sendRedirect("doctor/edit_profile.jsp");
			}
			else
			{
				session.setAttribute("errorMsgd", "Something Wrong On Server..");
				resp.sendRedirect("doctor/edit_profile.jsp");
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
	}
}
