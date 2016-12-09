<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Register</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.23/jquery.form-validator.min.js"></script>
</head>
<body>
   <script>
  $('#register').validate({
    modules : 'html5'
    
  });
</script>
    <br>
    <div class="container-fluid">
        <div class="panel panel-success">
            <div class="panel-heading" align="center">
            	<h4><b><font color="red" style="font-family: fantasy;font-size:32px; font-stretch: expanded">HCL INFOSYSTEM LTD.</font> </b></h4>
                	<h4><font align="left" color="green" style="font-family: Times New Roman; font-size:20px" >Your Profile</font></h4>
                  	<div style="float:right; color:black"><%=(String)session.getAttribute("user") %></div> 
                  	<br>
                  	<a href="Login.jsp" class="btn btn-warning btn-md pull-right">Log Out</a>		
              		<a href="Profile" class="btn btn-primary btn-md pull-left">BACK</a>
              		
            </div>
            <div class="panel-body"align="center" style="backgroud-color:#eca6d6">
                 
                <div class="container " style="margin-top: 5%; margin-bottom: 5%;">
               		 <s:if test="hasActionMessages()">
   						<div style="color:red">
     					 <s:actionmessage/>
  						 </div>
						</s:if>
   
                    <div class="panel panel-danger" style="max-width: 65%;" align="left" style="backgroud-color:E391D7">
                       
                        <div class="panel-heading form-group">
                            <b><font color="white">
                                PROFILE </font> </b>
                        </div>
                   
                        <div class="panel-body" >
                     
					<s:if test="hasActionErrors()">
  					 	<div class="errors" style="color:red">
    				  		<s:actionerror/>
   						</div>
					</s:if>
                        <form action="ChangePassword" method="post" >
                        
                            <div class="form-group">
                                <label>Email ID</label> <input
                                    type="email" class="form-control" name="email" id="email"
                         	        placeholder="Enter your registered Email Id" required="required" data-validation="email" data-validation-error-msg="You did not enter a valid e-mail">
                         	       
                       		</div>
                         
                            <div class="form-group">
                                <label>Mobile Number</label> <input
                                    type="number" class="form-control" name="mobile" id="mobile"
                                    placeholder="Enter your register Mobile Number" required="required" data-validation="number" data-validation-length="max12">
                                    
                            </div>
                            
                          
                             <div class="form-group ">
                                <label for="password">Old Password</label> <input
                                    type="password" class="form-control" name="opswd" 
                                    placeholder="Old Password" required="required">
                            </div>

                            <div class="form-group">
                                <label for="password">New Password</label> <input
                                    type="password" class="form-control" name="npswd" 
                                    placeholder="New Password" required="required">
                            </div>
                            
                             <div class="form-group">
                                <label for="password">Confirm Password</label> <input
                                    type="password" class="form-control" name="cpswd"
                                    placeholder="Confirm Password" required="required">
                            </div>
                            
                            	<button type="submit" class="btn btn-info btn-md" ><b>Change Password</b></button>
                          
                        </form>
						
                        </div>
                    </div>
                   
                </div>
               
            </div>
            <div class="panel-footer" align="center"><font style="color: #151">Copyright @2016  <a href="https://www.hclinfosystems.in/">hcl.com</a>, All Rights Reserved. </font></div>
        </div>
    </div>
    
</body>
</html>