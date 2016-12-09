<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.hcl.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> Manager Page</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">


</style>
</head>
<body>
<% Services s= new Services();
			 boolean b=  s.check((String)session.getAttribute("user"));
			   System.out.print(b);
   	if(b) {%>
<div class="container-fluid">
 <div class="panel panel-success" style="backgroud-color:#EFC8FB">
  <div class="panel-heading" align="center">
		<h4><font style="font-family: Times New Roman;font-size:28px; color:#FF3333; align:center;">HCL INFOSYSTEM LTD.</font></h4>
	</div>
	<div class="col-sm-8">	
		<br>
		<h3 style="color:green;float:left">Hello!! <s:property value="%{#session.user}"/>  you have successfully login.</h3><br>
	</div>
	<div class="col-sm-4" style="float:right">
		<br>
		<i style="float:right">${sessionScope.user}</i>
		<br>
		<a href="Login.jsp" class="btn btn-warning btn-sm" style="float:right" >Log Out</a>
	</div>
	<div class="panel-body"align="center" style="backgroud-color:#eca6d6">
	<div class="btn-group btn-group-justified">
		<a href="create.jsp" class="btn btn-primary">Create</a>
    	<a href="assign" class="btn btn-primary">Assign</a>
    	<a href="bug" class="btn btn-primary">Bugs</a>	
    	<a href="EmployeeDetail" class="btn btn-primary">Employee Details</a>
    	<a href="Profile" class="btn btn-primary">Profile</a>
	</div>
	<br>
	<h3 style="color:orange;float:left">Your Project Details are:</h3>
	<br>
	<div class="container">
	<table class="table table-striped" style="max-width: 95%;">
    <thead>
      <tr>
        <th>PROJECT</th>
        <th>MANAGER</th>
        <th>EMPLOYEES</th>
      </tr>
    </thead>
    <tbody>
    	<s:iterator value="pl">           
			<tr>
			<td><a href="bugDetail.action?id=<s:property value="%{project}" />"><s:property value="%{project}" /></a></td>
			<td><s:property value="%{manager}"/></td>
			<td><s:property value="%{emp}" /></td>
			<td><a href="Unassign?id=<s:property value="%{project}"/>" class="btn btn-info btn-sm"> Unassign </a></td>
			</tr>
		</s:iterator>
    </tbody>
  </table>
      	<h4 style="color:red;float:left">Unassigned Projects:</h4>
     	 <table class="table table-striped" style="max-width: 95%;">
   		 <tbody>
    	 <s:iterator value="al">           
				<tr>
				<td><s:property/></td>
				</tr>
			</s:iterator>
    	</tbody>
  		</table>
  	</div>
  	</div>
  <div class="panel-footer" align="center"><font style="color: #151">Copyright @2016  <a href="https://www.hclinfosystems.in/">hcl.com</a>, All Rights Reserved. </font></div>
</div>
</div>
<%}
   	else{
   		response.sendRedirect("Login.jsp");
   	}%>
</body>
</html>
