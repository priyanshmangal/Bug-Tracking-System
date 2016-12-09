<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
            	<h4><font style="font-family: fantasy;font-size:28px; color:#FF3333"> WELCOME TO HCL INFOSYSTEM LTD.</font></h4>
                <h4><font color="black" style="font-family: fantasy;font-size:20px"> Register Here</font></h4>
            </div>
            <div class="panel-body"align="center" style="backgroud-color:#eca6d6">
                 
                <div class="container " style="margin-top: 5%; margin-bottom: 5%;">
   
                    <div class="panel panel-primary" style="max-width: 65%;" align="left" style="backgroud-color:E391D7">
                       
                        <div class="panel-heading form-group">
                            <b><font color="white">
                                REGISTER </font> </b>
                        </div>
                   
                        <div class="panel-body" >
					<s:if test="hasActionErrors()">
  					 	<div class="errors" style="color:red">
    				  		<s:actionerror/>
   						</div>
					</s:if>
                        <form action="register" method="post" >
                         <div class="row">
                            <div class="form-group col-md-5">
                                <label >Full Name</label> <input
                                    type="text" class="form-control" name="name" id="name"
                                    placeholder="Enter Full Name" required="required" required pattern="[a-zA-Z\s]+">
                                    <span id="error1" style="color:red;font-size: 12px;">Wrong Name Format</span>
                                   
                            </div>
                          
                            <div class="form-group col-md-5">
                                <label>Email ID</label> <input
                                    type="email" class="form-control" name="email" id="email"
                         	        placeholder="Email Id" required="required" data-validation="email" data-validation-error-msg="You did not enter a valid e-mail">
                         	        <span id="error" style="color:red;font-size: 12px;">Wrong Email Format</span>
                       		</div>
                         </div>   
                         <div class="row">
                            <div class="form-group col-md-5">
                                <label>Mobile Number</label> <input
                                    type="number" class="form-control" name="mobile" id="mobile"
                                    placeholder="Mobile Number" required="required" data-validation="number" data-validation-length="max12">
                                    <span id="error3" style="color:red;font-size: 13px;">Wrong Number Format</span>
                                   
                            </div>
                            <div class="form-group col-md-5">
                                <label>Employee Code</label> <input
                                    type="text" class="form-control" name="empcode" id="empcode"
                                    placeholder="Emp Code" required="required">
                                   
                                   
                            </div>
                           </div> 
                          <div class="row">
                            <div class="form-group col-md-8">
                                <label>Choose Your Designation</label> 
                                <input type="radio" name="desig" value="Manager" required="required"/>Manager 
                    			<input type="radio" name="desig" value="Emp" required="required"/>Employee
                            </div>     
                          </div>
                            <div class="row">
                            <div class="form-group col-md-5">
                                	<label for="username">User Name</label> <input
                                    type="text" class="form-control" name="uname" id="uname"
                                    placeholder="Enter User Name" required="required">
                                   
                            </div>
                            <div class="form-group col-md-5">
                                <label for="password">Password</label> <input
                                    type="password" class="form-control" name="password" id="password"
                                    placeholder="Password" required="required">
                            </div>
                            </div>
                            <button type="submit" style="width: 100%; font-size:1.1em;" class="btn btn-large btn btn-info btn-lg btn-block" ><b>Submit</b></button>
                                                  
                        </form><br>
						<label for="register">Already registered!! <a href="Login.jsp">Login Here</a></label>
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