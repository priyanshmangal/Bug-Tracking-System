<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<body>
   
    <br>
    <div class="container-fluid">
        <div class="panel panel-warning" style="background-color:#ECFCD8">
            <div class="panel-heading" align="center" style="background-color:#F7E095">
            	<h4><font style="font-family: fantasy;font-size:28px; color:#FF3333"> WELCOME TO HCL INFOSYSTEM LTD.</font></h4>
                <h4><b><font color="black" style="font-family: Times New Roman;font-size:24px;"> Login Here</font> </b></h4>
            </div>
            <div class="panel-body"align="center" style="backgroud-color:#eca6d6">
                 
                <div class="container " style="margin-top: 5%; margin-bottom: 5%;">
   						<font color="red">Please try again either your User Name or Password is wrong</font>
                    <div class="panel panel-info" style="max-width: 45%;" align="left" style="backgroud-color:E391D7">
                       
                        <div class="panel-heading form-group">
                            <b><font color="white">
                                Login </font> </b>
                        </div>
                   
                        <div class="panel-body" >

                        <form action="login" >
                            <div class="form-group">
                                <label for="username">User Name</label> <input
                                    type="text" class="form-control" name="uname" id="uname"
                                    placeholder="Enter User Name" required="required">
                                   
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label> <input
                                    type="password" class="form-control" name="pass" id="pass"
                                    placeholder="Password" required="required">
                            </div>
                            <button type="submit" style="width: 100%; font-size:1.1em;" class="btn btn-large btn btn-primary btn-lg btn-block" ><b>Login</b></button>
                                                  
                        </form><br>
						<label for="SignUp"	>Yet Not Registered!! <a href="register.jsp">Register Here</a></label>
                        </div>
                    </div>
                   
                </div>
               
            </div>
            <div class="panel-footer" align="center"><font style="color: #151">Copyright @2016  <a href="https://www.hclinfosystems.in/">hcl.com</a>, All Rights Reserved. </font></div>
        </div>
    </div>
   
</body>

</body>
</html>