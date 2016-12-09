<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> Employee Page</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>
.custom {
    width: 30% !important;
}
</style>
</head>
<body>
<div class="container-fluid">
        <div class="panel panel-success" style="backgroud-color:#EFC8FB">
            <div class="panel-heading" align="center">
            		<h4><b><font color="red" style="font-family: fantasy;font-size:32px; font-stretch: expanded">HCL INFOSYSTEM LTD.</font> </b></h4>
                	<h4><font  color="blue" style="font-family: Times New Roman;align:left; font-size:18px" >Hello!! <%=session.getAttribute("user") %> you have successfully login.</font></h4>
                  	<div style="float:right; color:black"><%=(String)session.getAttribute("user") %></div> 
                  	<br>
                  	<a href="Login.jsp" class="btn btn-warning btn-md pull-right">Log Out</a>
                  	<a href="Profile" class="btn btn-info btn-md pull-right">Profile</a>
            		<a href="BugEmp" class="btn btn-info btn-md pull-center custom">Bugs</a>
            </div>
            <div class="panel-body"align="center" style="backgroud-color:#eca6d6">
               
               <div class="container " style="margin-top: 1%; margin-bottom:1%;">
   
                    <div class="panel panel-danger" style="max-width: 99%;" align="left">
                       	<div class="container">
                 <table class="table table-striped" style="max-width: 95%;">
				    <thead>
				      <tr>
				        <th>Project</th>
				        <th>Manger</th>
				        <th>Description</th>
				        <th>Start Date</th>
				        <th>End Date</th>
				      </tr>
				    </thead>
				    <tbody>
				    <s:iterator value="epl">           
						<tr>
							<td><s:property value="%{project}"/></td>
							<td><s:property value="%{manager}"/></td>
							<td><s:property value="%{desc}" /></td>
							<td><s:property value="%{start}" /></td>
							<td><s:property value="%{end}" /></td>
						</tr>
					</s:iterator>
				    </tbody>
				  </table>
				 </div> 
                        
                   
                        <div class="panel-body" >
						
							
                        </div>
                    </div>
               
            </div>
            <div class="panel-footer" align="center"><font style="color: #151">Copyright @2016  <a href="https://www.hclinfosystems.in/">hcl.com</a>, All Rights Reserved. </font></div>
        </div>
    </div>
    </div>
</body>
</html>
