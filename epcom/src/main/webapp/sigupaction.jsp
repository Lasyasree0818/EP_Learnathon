<%@page import ="epcom.ConnectionProvider" %>
<%@page import = "java.sql.*" %>
<%
String user=request.getParameter("user");
String email=request.getParameter("email");
String number=request.getParameter("number");
String securityquestion=request.getParameter("securityquestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");
String address="";
String city="";
String state="";
String country=""; 
try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into prj values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, user);
	ps.setString(2, email);
	ps.setString(3, number);
	ps.setString(4, securityquestion);
	ps.setString(5, answer);
	ps.setString(6, password);
	ps.setString(7, address);
	ps.setString(8, city);
	ps.setString(9, state);
	ps.setString(10, country);
	ps.execute();
	response.sendRedirect("signup.jsp?msg=valid");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");
}
%>