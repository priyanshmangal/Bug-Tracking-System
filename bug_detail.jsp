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
<style>
.scrol {
    overflow-y: scroll;
    overflow-x: hidden;
    height:250px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 50%;
    
}

/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
.solve .popup {
  display: none;
}

.solve:hover .popup {
  display: block;
}
</style>
</head>
<body>
<div class="container-fluid">
        <div class="panel panel-success" style="backgroud-color:#EFC8FB">
            <div class="panel-heading" align="center">
            		<h4><b><font color="red" style="font-family: fantasy;font-size:32px; font-stretch: expanded">HCL INFOSYSTEM LTD.</font> </b></h4>
                	<h4><font align="left" color="blue" style="font-family: Times New Roman; font-size:18px" >Your Project Bugs: "<s:property value="%{id}"/>"</font></h4>
                  	<div style="float:right; color:black"><%=(String)session.getAttribute("user") %></div> 
                  	<br>
                  	<a href="Login.jsp" class="btn btn-warning btn-md pull-right">Log Out</a>
              		<a href="ProjectDetails" class="btn btn-primary btn-md pull-left">HOME</a>
              		<a href="bug" class="btn btn-primary btn-md pull-left">BACK</a>
            </div>
            <div class="panel-body"align="center" style="backgroud-color:#eca6d6">
            <br>
            <br>
            <div class="container">
            <div class="scrol">
            <div>
                 <table class="table table-striped" style="max-width: 95%;">
				    <thead>
				      <tr>
				        <th>Name</th>
				        <th>Designation</th>
				        <th>Bug Posted</th>
				        <th>Post Date</th>
				         <th>Solved By</th>
				         <th>Solved Date</th>
				        <th>Status</th>    
				      </tr>
				    </thead>
				       
				    <tbody>
				    <%int index=1; %>
				    <s:iterator value="buglist">           
						<tr>
						<td><s:property value="%{name}" /></td>
						<td><s:property value="%{designation}" /></td>
						<td><s:property value="%{bug}" /></td>
						<td><s:property value="%{date}" /></td>
						<td><s:property value="%{solved_by}" /></td>
						<td><s:property  value="%{solved_date}" /></td>
						<input type=hidden name="user" id="u<%= index %>" class="form-control" value="<s:property value="%{username}"/>">
             			<input type=hidden name="post" id="p<%= index %>" class="form-control" value="<s:property value="%{bug}"/>">
						<s:if test="status=='Solved'">
						<%//<td><a href="update?user=<s:property value="%{username}"/>&post=<s:property value="%{bug}" />" class="btn btn-success btn-sm"  ><span id="err"><s:property value="%{status}"/></span></a></td>
						%>
						<td><button type="button" class="btn btn-success btn-sm" class="btn" id="solve" title="<s:property value="%{solution}"/>" onmouseover="this.title"><s:property value="%{status}"/></button></td>
						<div id="popup" style="display: none"><s:property value="%{solution}"/></div>
						</s:if>
						<s:else>
						<%//<td><a href="update?user=<s:property value="%{username}"/>&post=<s:property value="%{bug}" />" class="btn btn-warning btn-sm" id="button"><span id="err"><s:property value="%{status}"/></span></a></td>
						%>
						<td><button type="button" class="btn btn-warning btn-sm" class="btn" id="<%= index %>" onClick="myFunc(this.id);" ;><s:property value="%{status}"/></button></td>
						</s:else>
						</tr>
						<% index++; %>
						</s:iterator>
						</tbody>
				  </table>
				  </div>
				  </div>
				 </div>
				 <!-- The Modal -->
						<div id="myModal" class="modal">
 						<!-- Modal content -->
  							<div class="modal-content">
   								<span class="close">×</span>
   								 <form action="update" >
             						<div class="form-group">
             						<input type="hidden" name="user" id="user" class="form-control" value="null">
             						<input type="hidden" name="post" id="post" class="form-control" value="null">
                              		  <label>Post your Solution</label> <textarea rows="5" cols="5"
                                     class="form-control" name="solution" id="bug"
                                    placeholder="Add you solution" required></textarea>      
                            		</div>
                            		<button type="submit" style="width: 100%; font-size:1.1em;" class="btn btn-large btn btn-info btn-lg" ><b>Solve</b></button>                     
                        		</form>
  								</div>
  							</div>	
                <div class="container " style="margin-top: 5%; margin-bottom:3%;">
   
                    <div class="panel panel-danger" style="max-width: 70%;" align="left">
                       
                        <div class="panel-heading form-group">
                            <b><font color="red">
                                Post your bugs for project: <s:property value="%{id}"/> </font> </b>
                        </div>
                   
                        <div class="panel-body" >
						<form action="bug_insert" >
             
                            <div class="form-group">
                                <label>POST</label> <textarea rows="6" cols="4"
                                     class="form-control" name="bug" id="bug"
                                    placeholder="Add you bugs" required></textarea>
                                   
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
 <script>
	//Get the modal
	 var modal = document.getElementById('myModal');
			function myFunc(id)
            {	
				
				//alert(id);
				var user = document.getElementById("u"+id).value;
				 document.getElementById("user").value = user;
   				var post = document.getElementById("p"+id).value;
   			 document.getElementById("post").value = post;
                modal.style.display = "block";
                console.log(id); 
                var span = document.getElementsByClassName("close")[0];
                
                span.onclick = function() {
    			    modal.style.display = "none";
    			}
                
             // When the user clicks anywhere outside of the modal, close it
    			window.onclick = function(event) {
    			    if (event.target == modal) {
    			        modal.style.display = "none";
    			    	}
                 }
    			 
            }
		
</script>
</body>
</html>