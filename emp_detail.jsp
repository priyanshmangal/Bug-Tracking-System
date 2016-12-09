<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bugs Detail</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
        <div class="panel panel-info" style="backgroud-color:#EFC8FB">
            <div class="panel-heading" align="center">
            		<h4><b><font color="red" style="font-family: fantasy;font-size:32px; font-stretch: expanded">HCL INFOSYSTEM LTD.</font> </b></h4>
                	<h4><font align="left" color="green" style="font-family: Times New Roman; font-size:20px" >EMPLOYEE DETAILS</font></h4>
                  	<div style="float:right; color:black"><%=(String)session.getAttribute("user") %></div> 
                  	<br>
                  	<a href="Login.jsp" class="btn btn-warning btn-md pull-right">Log Out</a>
              		<a href="ProjectDetails" class="btn btn-primary btn-md pull-left">HOME</a>
            </div>
            <div class="panel-body"align="center" style="backgroud-color:#eca6d6">
            <br>
            <br>
            <div class="container " style="margin-top: 5%; margin-bottom:3%;">
            
                 <table class="table table-striped" style="max-width: 95%;">
				    <thead>
				      <tr>
				        <th>Name</th>
				        <th>Mobile Number</th>
				        <th>Email ID</th>
				        <th>Employee Code</th>
				        <th>Registration Date</th>    
				      </tr>
				    </thead>
				    
				    <tbody>
				    <s:iterator value="ed">           
						<tr>
						<td><s:property value="%{name}" /></td>
						<td><s:property value="%{mobile}" /></td>
						<td><s:property value="%{email}" /></td>
						<td><s:property value="%{emp_code}" /></td>
						<td><s:property value="%{reg}" /></td>
						</tr>
						</s:iterator>
				    </tbody>
				  </table>
				 </div> 
                </div>
            <div class="panel-footer" align="center"><font style="color: #151">Copyright @2016  <a href="https://www.hclinfosystems.in/">hcl.com</a>, All Rights Reserved. </font></div>
        </div>
    </div>
   
</body>
</html>