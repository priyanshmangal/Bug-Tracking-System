<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.hcl.*" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bug Track</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <br>
    <div class="container-fluid">
        <div class="panel panel-success" style="backgroud-color:#EFC8FB">
            <div class="panel-heading" align="center">
            		<h4><b><font color="red" style="font-family: fantasy;font-size:32px; font-stretch: expanded">HCL INFOSYSTEM LTD.</font> </b></h4>
                	<h4><font align="left" color="black" style="font-family: Times New Roman; font-size:18px" >Track Your Project Bugs</font></h4>
                  	<div style="float:right; color:black"><%=(String)session.getAttribute("user") %></div> 
                  	<br>
                  	<a href="Login.jsp" class="btn btn-warning btn-md pull-right">Log Out</a>
              		<a href="ProjectDetails" class="btn btn-primary btn-md pull-left">HOME</a>
            </div>
            <div class="panel-body"align="center" style="backgroud-color:#eca6d6">
                 
                <div class="container " style="margin-top: 3%; margin-bottom: 3%;">
   
                    <div class="panel panel-danger" style="max-width: 65%;" align="left" style="backgroud-color:E391D7">
                       
                        <div class="panel-heading form-group">
                            <b><font color="white">
                                Select Project </font> </b>
                        </div>
                   
                        <div class="panel-body" >
							<s:iterator value="pl">	
								<a href="bugDetail.action?id=<s:property/>" class="btn btn-info btn-block"><s:property/></a><br>
							</s:iterator>
							
							<% /* 	<s:url action="bugDetail.action" var="bugDetail">
							    <s:param name="age">99</s:param>
							</s:url>
							<s:a href="%{bugDetail}">99</s:a>*/ %>
							 
							 
						
                        
                        </div>
                    </div>
                   
                </div>
               
            </div>
            <div class="panel-footer" align="center"><font style="color: #151">Copyright @2016  <a href="https://www.hclinfosystems.in/">hcl.com</a>, All Rights Reserved. </font></div>
        </div>
    </div>
   
</body>
</html>