<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDoa"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.database.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/all_css.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
       <%@include file="adminNavbar.jsp" %>
       
       <div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-12">
			  <div class="card paint-card">
			    <div class="card-body">
			      <p class="fs-3 text-center">Doctor Details</p>
			      <c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>
			      <table class="table">
			      <thread>
			          <tr>
			             <th scope="col">Full Name</th>
			             <th scope="col">DOB</th>
			             <th scope="col">Qualification</th>
			             <th scope="col">Specialist</th>
			             <th scope="col">Email</th>
			             <th scope="col">Mob No</th>
			             <th scope="col">Action</th>			             
			          </tr>
			      </thread>
			      <tbody>
			          <%
			          DoctorDoa doa2=new DoctorDoa(DBConnect.getConn());
			          List<Doctor> list2=doa2.getAllDoctor();
			          for(Doctor d:list2)
			          {%>
			           <tr>
			              <td><%=d.getFullName() %></td>
			              <td><%=d.getDob() %></td>
			              <td><%=d.getQualification() %></td>
			              <td><%=d.getSpecialist() %></td>
			              <td><%=d.getEmail() %></td>
			              <td><%=d.getMobNo() %></td>
			              <td>
			              <a href="edit_doctor.jsp?id=<%=d.getId()%>" class="btn btn-sm btn-primary">Edit</a>
			              <a href="../deleteDoctor?id=<%=d.getId()%>" class="btn btn-sm btn-danger">Delete</a>
			              </td>
			              
			              
			           </tr>
			        	  
			          <% }
			          %>
			      
			      
			      
			      </tbody>
			      </table>
			    </div>
			  </div>
			</div>


			
		</div>
	</div>
</body>
</html>
</body>
</html> 