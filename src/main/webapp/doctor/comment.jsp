<%@page import="com.entity.Appointment"%>
<%@page import="com.database.DBConnect"%>
<%@page import="com.dao.AppointmentDoa"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <%@include file="../component/all_css.jsp"%>
      <style type="text/css">
      .paint-card{
         box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
      }
      
      .backImg {
	    background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("../image/hospital.jpg");
	    height: 20vh;
	    width: 100%;
	    background-size: cover;
	    background-repeat: no-repeat;
}
   </style>
</head>

<body>

      <c:if test="${empty doctObj }">
        <c:redirect url="../doctor_login.jsp"></c:redirect>
       </c:if>
       
       <%@include file="navbar.jsp"%>
       <div class="container-fluid backImg p-5">
            <p class="text-center fs-2 text-white"></p>
       </div>
       <div class="container p-3">
          <div class="card paint-card">
              <div class="card-body">
                   <p class="text-center fs-4">Patient Comment</p>
                   
                   <% int id=Integer.parseInt(request.getParameter("id"));
                    AppointmentDoa dao=new AppointmentDoa(DBConnect.getConn());
                    
                    Appointment ap= dao.getAllAppointmentById(id);
                   %>
                   
                   <form class="row" action="../updateStatus" method="post">
                      <div class="col-md-6">
                      <label>Patient Name</label> <input type="text" readonly value="<%=ap.getFullName() %>"
                         class="form-control">
                      </div>
                      
                       <div class="col-md-6">
                      <label>Age</label> <input type="text" readonly value="<%=ap.getAge() %>"
                         class="form-control">
                      </div>
                      
                       <div class="col-md-6">
                        <br> <label>Mob No</label> <input type="text" readonly value="<%=ap.getPhNo() %>"
                         class="form-control">
                      </div>
                      
                        <div class="col-md-6">
                       <br>  <label>Diseases</label> <input type="text" readonly value="<%=ap.getDiseases() %>"
                         class="form-control">
                      </div>
                      
                        <div class="col-md-12" >
                        <br> <label>Comment</label>
                       <textarea required name="comm" rows="3" cols=""
                        class="form-control">Comment</textarea>
                      </div>
                      
                      <input type="hidden" name="id" value="<%=ap.getId()%>">
                      <input type="hidden" name="did" value="<%=ap.getDoctorId() %>">
                      
                      <button class="mt-3 btn btn-primary col-md-6 offset-md-3">Submit</button>
                      
                      
                   </form>
              </div>
          </div>
       </div>
       
       

</body>
</html>