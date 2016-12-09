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
  $('#UpdateProfile').validate({
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
              		<s:if test="designation=='Manager'">
              		<a href="ProjectDetails" class="btn btn-primary btn-md pull-left">HOME</a>
              		</s:if>
              		<s:else>
              		<a href="EmpProjectDetails" class="btn btn-primary btn-md pull-left">HOME</a>
              		</s:else>
            </div>
            <div class="panel-body"align="center" style="backgroud-color:#eca6d6">
                 
                <div class="container " style="margin-top: 5%; margin-bottom: 5%;">
               		 <s:if test="hasActionMessages()">
   						<div style="color:red">
     					 <s:actionmessage/>
  						 </div>
						</s:if>
   					<div style="color:red">	<s:property value="%{msg}"/></div>
                    <div class="panel panel-primary" style="max-width: 65%;" align="left" style="backgroud-color:E391D7">
                       
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
                        <form action="UpdateProfile" method="post" >
                        
                         <div class="row">
                            <div class="form-group col-md-5">
                                	<label for="username">User Name</label> <input
                                    type="text" class="form-control" name="uname" id="uname"
                                    value="<s:property value="%{user}"/>" required="required">
                                   
                            </div>
                         
                            <div class="form-group col-md-5">
                                <label >Full Name</label> <input
                                    type="text" class="form-control" name="name" id="name" value="<s:property value="%{name}"/>"
                                     required="required" required pattern="[a-zA-Z\s]+">
                                    <span id="error1" style="color:red;font-size: 12px;">Wrong Name Format</span>
                             </div>  
                        </div>
                      <div class="row">  
                            <div class="form-group col-md-5">
                                <label>Email ID</label> <input
                                    type="text" class="form-control" name="email" id="email"
                         	        value="<s:property value="%{email}"/>" required="required" data-validation="email" data-validation-error-msg="You did not enter a valid e-mail">
                         	        <span id="error" style="color:red;font-size: 12px;">Wrong Email Format</span>
                       		</div>
                         
                            <div class="form-group col-md-5">
                                <label>Mobile Number</label> <input
                                    type="number" class="form-control" name="mobile" id="mobile"
                                    value="<s:property value="%{mobile}"/>" required="required" data-validation="number" data-validation-length="max12">
                                    <span id="error3" style="color:red;font-size: 13px;">Wrong Number Format</span>
                            </div>
                          </div>  
                          <div class="row">  
                            <div class="form-group col-md-5">
                                <label>Employee Code</label> <input
                                    type="text" class="form-control" name="empcode" id="empcode"
                                    value="<s:property value="%{emp_code}"/>" required="required">
         
                            </div>

                            <div class="form-group col-md-5">
                            	<br>
                          
                                <label>Designation</label> 
                                <input type="radio" name="desig" value="Manager" <s:if test="designation=='Manager'">checked</s:if> required="required"/>Manager 
                    			<input type="radio" name="desig" value="Emp" <s:if test="designation=='Emp'">checked</s:if> required="required"/>Employee
                            </div>     
                          </div>
                            <br>
                            <div class="row">
                            <div class="form-group col-md-5">
                            	<button type="submit" class="btn btn-info btn-md pull-left" ><b>Update Profile</b></button>
                           	</div>
                           	<div class="form-group col-md-5">
                           		<a href="change_pswd.jsp" class="btn btn-info btn-md pull-right"><b>Change Password</b></a>
                        	</div>
                        	</div>
                        </form>
						
                        </div>
                    </div>
                   
                </div>
               
            </div>
            <div class="panel-footer" align="center"><font style="color: #151">Copyright @2016  <a href="https://www.hclinfosystems.in/">hcl.com</a>, All Rights Reserved. </font></div>
        </div>
    </div>
    
    <script>
  $('#register').validate({
    validateOnBlur : false, // disable validation when input looses focus
    scrollToTopOnError : false // Set this property to true on longer forms
  });
</script>
    
  <script type="text/javascript"> 
			  //email vaidation
			 $('#error').hide(); 
			 $(function() {
					$('#email').on('blur', function() {
			    var re = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/.test(this.value);
			    if(!re) {
			        $('#error').show();
			        $(this).rules('add', {
			            required: true,
			            messages: {
			                required: "Enter something else"
			            }
			        });
			         $(this).css('border-color', 'red');
			    } else {
			        $('#error').hide();
			        (this).css('border-color', '');
			    }
			});
			});
			
			 
			 
			//name validation
			 $('#error1').hide(); 
			 $(function() {
					$('#name').on('blur', function() {
			    var re = (/^[a-zA-Z\s]+$/).test(this.value);
			    if(!re) {
			        $('#error1').show();
			         $(this).css('border-color', 'red');
			          $(this).css('transition', 'border-color ease-in-out .15s,box-shadow ease-in-out .15s');
			    } else {
			        $('#error1').hide();
			        $(this).css('border-color', '');
			    }
			});
			});
			 
			 
			 
			//contact no. validation
			 $('#error3').hide(); 
			 $(function() {
					$('#mobile').on('blur', function() {
			   // var re = (/^(?:\+\d{2})?\d{10}(?:,(?:\+\d{2})?\d{10})*$/).test(this.value);
			    var re = (/^\d*[0-9](|.\d*[0-9]|,\d*[0-9])?$/).test(this.value);
			    if(!re) {
			        $('#error3').show();
			         $(this).css('border-color', 'red');
			          $(this).css('transition', 'border-color ease-in-out .15s,box-shadow ease-in-out .15s');
			    } else {
			        $('#error3').hide();
			        $(this).css('border-color', '');
			    }
			});
			});
 </script>

</body>
</html>