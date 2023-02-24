<%@page import="com.database.DBConnect"%>
<%@page import="com.dao.DoctorDoa"%>
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
    <c:if test="${empty adminObj }">                                      // To Make Page Dynamic.
       <c:redirect url="../admin_login.jsp"></c:redirect>
    </c:if>
    <div class="container p-5">
    <p class= "text-center fs-3">Admin Dashboard</p>
    <c:if test="${not empty errorMsg }">
     <p class="fs-3 text-center text-danger"> ${errorMsg }</p>
     <c:remove var="errorMsg" scope="session"/>
     </c:if>
     
      <c:if test="${not empty succMsg }">
     <p class="fs-3 text-center text-success"> ${succMsg }</p>
     <c:remove var="succMsg" scope="session"/>
     </c:if>
     
     <% DoctorDoa doa =new  DoctorDoa(DBConnect.getConn()); %>
     
     <div class="row">
     <div class="col-md-4">
       <div class="card paint-card">
          <div class="card-body text-center text-success">
             <i class="fas fa-user-md fa-3x"></i><br>
             <p class="fs-4 text-center">
                  Doctor <br> <%=doa.countDoctor() %>
             </p>
         </div>
       </div>
     </div>
     
      <div class="col-md-4">
       <div class="card paint-card">
          <div class="card-body text-center text-success">
             <i class="fas fa-user-circle fa-3x"></i><br>
             <p class="fs-4 text-center">
                User <br> <%=doa.countUser() %>
             </p>
         </div>
       </div>
     </div>
     
      <div class="col-md-4">
       <div class="card paint-card">
          <div class="card-body text-center text-success">
             <i class="far fa-calendar-check fa-3x"></i><br>
             <p class="fs-4 text-center">
                Appointment <br> <%=doa.countUser() %>
             </p>
         </div>
       </div>
     </div>
     
     <br>
      <div class="col-md-4 mt-4">
       <div class="card paint-card" data-bs-toggle="modal"
       data-bs-target="#exampleModal">
          <div class="card-body text-center text-success">
             <i class="far fa-calendar-check fa-3x"></i><br>
             <p class="fs-4 text-center">
               Specialist <br> <%=doa.countSpecialist() %>
             </p>
         </div>
       </div>
     </div>
      
     </div>
    </div>
    
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <form action="../addSpecialist" method="post"> 
         <div class="form-group">
           <label> Enter Specialist Name</label>
           <input type="text" name="specName" class="form-control">
         </div>
         <div class="text-center">
            <button type="submit" class="btn btn-primary mt-3">ADD</button>        
         </div>
       </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>
    
    

</body>
</html>