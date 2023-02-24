# MediLiv-App---Hospital-Management-System-App

MediLiv hospital management system app. It is fully responsive application. In this project I used ADVACE JAVA(J2EE) concepts for back-end. This was a single project completed by indivisually in 15 days of time.

Database Schema

Project Own -
   Shubham  Ishwarchandra Metkar

Tech Stack
JAVA 
JDBC
SERVLET
JSP
Bootstrap 5
Tomcat v9 Server
My SQL 

Modules

   Admin Login Module
   Doctor Login Module
   User/ Patient Login Module
   Admin Module
   Appointment Datails Module

Features

       Signup and log in for Admin, doctors, and Patients.

Admin Features

    Admin can access all Details along with specific Doctor, User/patient details using admin Credentials.

Customer Features

    Patient can login in the application and update their information using their mobile number and password.
    Patient can book appointment using dare,time and day as peer their comfort.
    Patient can change or update their password if he want.

Cab Driver features

    Doctor can login in the application and update their information check patient appointment..
    Doctor can add and update their profile anyytime by their end.
    Doctor can check appoint of patient and give comment on them.
    Doctor can change or update their password if he want.

Server 

http://localhost:8082/Hospital_Manangement_System/index.jsp

Apache Tomcat Server
Login Requests

Admin Login

Request 	METHOD 	URI 	Description
POST 	Login   http://localhost:8082/Hospital_Manangement_System/admin/adminindex.jsp	Login Admin
GET 	Logout 	http://localhost:8082/Hospital_Manangement_System/admin_login.jsp 	Logout Admin

User/Patient Login

Request 	METHOD 	URI 	Description
POST 	Login 	http://localhost:8082/Hospital_Manangement_System/index.jsp 	Login User/Patient 
GET 	Logout 	http://localhost:8082/Hospital_Manangement_System/user_login.jsp 	Logout User/Patient

Doctor Login
   
Request 	METHOD 	URI 	Description
POST 	Login 	http://localhost:8082/Hospital_Manangement_System/doctor/doctorindex.jsp 	Login Doctor
GET 	Logout http://localhost:8082/Hospital_Manangement_System/doctor_login.jsp 	Logout Doctor
Admin Requests

Admin Controller

Request 	METHOD 	URI 	Description
POST 	Add 	http://localhost:8082/Hospital_Manangement_System/admin/doctor.jsp Add Doctor
PUT 	View 	http://localhost:8082/Hospital_Manangement_System/admin/view_doctor.jsp 	View Doctor
UPDATE 	Update 	http://localhost:8082/Hospital_Manangement_System/admin/edit_doctor.jsp?id=6 	Update Doctor
DELETE 	http://localhost:8082/Hospital_Manangement_System/admin/view_doctor.jsp 	DELETE
PUT 	View all Pateint 	http://localhost:8082/Hospital_Manangement_System/admin/patient.jsp View All Patient

User/Pateint Controller

Request 	METHOD 	URI 	Description
POST 	Book Appointment 	http://localhost:8082/Hospital_Manangement_System/user_appointment.jsp 	Book Appointment
POST 	View Appointment 	http://localhost:8082/Hospital_Manangement_System/view_appointment.jsp 	View Appointment
GET 	Change Password 	http://localhost:8082/Hospital_Manangement_System/change_password.jsp 	Chage password User/Patient


Doctor Controller 

Request 	METHOD 	URI 	Description
POST View Patient http://localhost:8082/Hospital_Manangement_System/doctor/patient.jsp 	View Patient
PUT 	Update Profile 	http://localhost:8082/Hospital_Manangement_System/doctor/edit_profile.jsp Profile Cab Driver
Docotr Caan  change theri password


About
   Name- Shubham Ishwarchandra Metkar
   email- shubhammetkar2000@gmail.com
   mob. no- 8600880085


Languages

    Java 100.0% 
    Servlet 60.0%
    Jsp & Css for front end.100.0%



