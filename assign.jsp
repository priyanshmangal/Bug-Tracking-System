<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.hcl.*" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Assign</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap-multiselect.css">
<script src="js/bootstrap-multiselect.js"></script>
</head>
<body>
<body>
   <% Services s= new Services();
			 boolean b=  s.check((String)session.getAttribute("user"));
			   System.out.print(b);
   	if(b) {%>
    <br>
    <div class="container-fluid">
        <div class="panel panel-danger" style="backgroud-color:#EFC8FB">
            <div class="panel-heading" align="center">
            		<h4><b><font color="red" style="font-family: fantasy;font-size:32px; font-stretch: expanded">HCL INFOSYSTEM LTD.</font> </b></h4>
                	<h4><font align="left" color="black" style="font-family: Times New Roman; font-size:18px" > ASSIGN PROJECT</font></h4>
                  	<div style="float:right; color:black"><%=(String)session.getAttribute("user") %></div> 
                  	<br>
                  	<a href="Login.jsp" class="btn btn-warning btn-md pull-right">Log Out</a>
              		<a href="ProjectDetails" class="btn btn-primary btn-md pull-left">HOME</a>
            </div>
            <div class="panel-body"align="center" style="backgroud-color:#eca6d6">
                 
                <div class="container-fluid" style="margin-top: 5%; margin-bottom: 5%;">
   
                    <div class="panel panel-success" style="max-width: 60%;" align="left" style="backgroud-color:E391D7">
                       
                        <div class="panel-heading form-group">
                            <b><font color="white">
                                Assign project to employees </font> </b>
                        </div>
                   
                        <div class="panel-body" >

                        <form action="assign_project" method="post" >
                            <div class="form-group col-sm-5">
                            	
                                <label >Select Project</label> 
                                <select name="project" required>
                                <s:iterator value="pl">           
								  <option value="<s:property/>"><s:property/></option>
								  </s:iterator>
								</select>
								
                                   
                            </div>
                            <div class="form-group col-sm-2"></div>
                            <div class="form-group col-sm-5">
                                <label>Assign project to employee</label> 
                                <select name="emp"  class="ui fluid dropdown" multiple="multiple" required>
  									<s:iterator value="emp">
  									<option value= "<s:property/>"><s:property/></option>
								 	</s:iterator>
								</select>
                            </div>
                           
                            <button type="submit" style="width: 100%; font-size:1.1em;" class="btn btn-large btn btn-info btn-lg btn-block" ><b>Submit</b></button>
                                                  
                        </form>
                        </div>
                    </div>
                   
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

</body>
</html>