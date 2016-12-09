<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.hcl.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bug Details</title>
</head>
<body>
	<%	String project=(String)session.getAttribute("proj"); 
		String username= (String)session.getAttribute("user");
		String user= request.getParameter("id");
		String post=request.getParameter("post");
		System.out.print("p="+project);
		System.out.print("un="+username);
		System.out.print(user);
		System.out.println(post);
		boolean b= false;
		final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	    final String DB_URL = "jdbc:mysql://localhost:3306/demo";
	   //  Database credentials
	    final String USER = "root";
	  	 final String PASS = "123";
	  	 Connection con = null;
	  	 Statement st = null;
	  	 String status="Unsolved";
	  	 Class.forName("com.mysql.jdbc.Driver");
			
	      //STEP 3: Open a connection
	      System.out.println("Connecting to database...");
	      con = DriverManager.getConnection(DB_URL,USER,PASS);
	   
	      st = con.createStatement();
		try{
		      //getConnection();
		      String sql, sql1, sql2;
		      sql = "select * from bug where project='"+project+"'and username='"+user+"'and bug='"+post+"'";
		      
		      ResultSet r = st.executeQuery(sql);
				 while(r.next()){
					 status=(r.getString("status"));
					 };
				if(status.equals("Unsolved")){
					sql2="update bug set status='Solved' and solved_by='"+username+"'where project='"+project+"'and username='"+user+"'and bug='"+post+"'";
					st.executeUpdate(sql2);
				}
	System.out.println("Status updated!!!!");
			sql1="Select * from signin where username='"+username+"'";
			ResultSet rs = st.executeQuery(sql1);
			 while(rs.next()){
				 if(rs.getString("designation").equals("Manager"))
					 b=true;
				 else 
					 b=false;
				 };
		 }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(st!=null)
		            con.close();
		      }catch(SQLException se){
		      }// do nothing
		      try{
		         if(con!=null)
		            con.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }//end finally try
		   }//end try
		   //System.out.println(b);
				   String s= "bug_detail.jsp?id="+project;
				   String se= "bug_detail_emp.jsp?id="+project;
				   System.out.println(s);
				//  response.sendRedirect("bug_detail_emp.jsp/#id="+project);
				  // response.sendRedirect(s);
				  // request.setAttribute("id", project);
				  // RequestDispatcher rd = request.getRequestDispatcher("pathToResource");
				  // rd.forward(request, response);
				  
		 if(b){
		
		   response.sendRedirect("bug.jsp");}
		   else
			   response.sendRedirect("bug_emp.jsp");
	
		%>
		
		 
</body>
</html>