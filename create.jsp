<%@ page isErrorPage="true" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.hcl.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Create</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
 <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
    $( "#sdate" ).datepicker();
    $( "#edate" ).datepicker();
    
  });
  </script>
</head>
<body>
<body>
   <% Services s= new Services();
			 boolean b=  s.check((String)session.getAttribute("user"));
			   System.out.print(b);
   	if(b) {%>
    <br>
    <div class="container-fluid">
        <div class="panel panel-info" style="backgroud-color:#EFC8FB">
            <div class="panel-heading" align="center">
            		<h4><b><font color="red" style="font-family: fantasy;font-size:32px; font-stretch: expanded">HCL INFOSYSTEM LTD.</font> </b></h4>
                	<h4><font align="left" color="black" style="font-family: Times New Roman; font-size:18px" > CREATE PROJECT</font></h4>
                  	<div style="float:right; color:black"><%=(String)session.getAttribute("user") %></div> 
                  	<br>
                  	<a href="Login.jsp" class="btn btn-warning btn-md pull-right">Log Out</a>
                  	<a href="ProjectDetails" class="btn btn-primary btn-md pull-left">HOME</a>
            </div>
            <div class="panel-body"align="center" style="backgroud-color:#eca6d6">
                 
                <div class="container " style="margin-top: 5%; margin-bottom: 5%;">
   
                    <div class="panel panel-danger" style="max-width: 45%;" align="left" style="backgroud-color:E391D7">
                       
                        <div class="panel-heading form-group">
                            <b><font color="white">
                                Login </font> </b>
                        </div>
                   
                        <div class="panel-body" >

                        <form action="create_project" method="post" >
                            <div class="form-group">
                                <label class="control-label" >Project Name</label> <input
                                    type="text" class="form-control" name="pname" id="pname"
                                    placeholder="Enter Project Name" required="required">
                                   
                            </div>
                            <div class="form-group">
                                <label class="control-label">Description</label> <textarea rows="4" cols="10"
                                     class="form-control" name="desc" id="desc"
                                    placeholder="Add description"></textarea>
                                   
                            </div>
                            <div class="form-group">

								      <label class="control-label">Starting Date</label> <input
                                    type="text" class="form-control" id="sdate" name="sdate" placeholder="MM/DD/YYYY">
								      
               				</div>
                            
                            <div class="form-group">
      
                                <label class="control-label">End Date</label> <input
                                    type="text" class="form-control" name="edate" id="edate"
                                    placeholder="MM/DD/YYYY">
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