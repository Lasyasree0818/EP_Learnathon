<%@page import ="epcom.ConnectionProvider" %>
<%@page import = "java.sql.*" %>
<%
String email=request.getParameter("email");
String mobileno=request.getParameter("mobileno");
String securityquestion=request.getParameter("securityquestion");
String answer=request.getParameter("answer");
String newpassword=request.getParameter("newpassword");

int check=0;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs=st.executeQuery("select *from prj where email='"+email+"'and mobileno='"+mobileno+"'and securityquestion='"+securityquestion+"'and answer='"+answer+"'");
	while(rs.next())
	{
		check=1;
		st.executeUpdate("update prj set password ='"+newpassword+"'where email='"+email+"'");
		response.sendRedirect("forgotpassword.jsp?msg=done");

	}
	if(check==0)
	{
		response.sendRedirect("forgotpassword.jsp?msg=invalid");
	}
    }
catch(Exception e)
{
	System.out.println(e);

}
%>