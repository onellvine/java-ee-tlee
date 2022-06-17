<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="com.srs.model.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 <h2>Student Information</h2>
	 <% Student stud  = (Student) session.getAttribute("student");%>
	 <jsp:useBean id="student" class="com.srs.model.Student" />
	 <jsp:setProperty name="student" property="userId" value="<%=stud.getUserId()%>" />
	 <jsp:setProperty name="student" property="firstName" value="<%=stud.getFirstName()%>" />
	 <jsp:setProperty name="student" property="lastName" value="<%=stud.getLastName()%>" />
	 <jsp:setProperty name="student" property="ssn" value="<%=stud.getSsn()%>" />
	 <jsp:setProperty name="student" property="email" value="<%=stud.getEmail()%>" />
	 <jsp:setProperty name="student" property="address" value="<%=stud.getAddress()%>" />
	 <jsp:setProperty name="student" property="city" value="<%=stud.getCity()%>" />
	 <jsp:setProperty name="student" property="state" value="<%=stud.getState()%>" />
	 <jsp:setProperty name="student" property="zip" value="<%=stud.getZip()%>" />
	 
	 <p>Got student....</p>
	 <jsp:getProperty name="student" property="userId" /> <br />
	 <jsp:getProperty name="student" property="firstName" /> <br />
	 <jsp:getProperty name="student" property="lastName" /> <br />
	 <jsp:getProperty name="student" property="ssn" /> <br />
	 <jsp:getProperty name="student" property="email" /> <br />
	 <jsp:getProperty name="student" property="address" /> <br />
	 <jsp:getProperty name="student" property="city" /> <br />
	 <jsp:getProperty name="student" property="state" /> <br />
	 <jsp:getProperty name="student" property="zip" /> <br />
</body>
</html>