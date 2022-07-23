<%@page import ="epcom.ConnectionProvider" %>
<%@page import = "java.sql.*" %>
<% 
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st = con.createStatement();
    String q1 = "create table prj(user varchar(100),email varchar(100),number bigint,securityquestion varchar(100),answer varchar(100),password varchar(100),address varchar(500),city varchar(100),state varchar(100),country varchar(100))";
	String q2 = "create table cart(email varchar(100),product_id int,quantity int,price int,total int,address varchar(500),city varchar(100),state varchar(100),country varchar(100),mobilenumber bigint,orderdate varchar(100),deliverydate varchar(100),paymentmethod varchar(100),transactionid varchar(100),status varchar(10))";
	//System.out.print(q1);
	st.execute(q1);
	
	System.out.print(q2);
	System.out.print("Table created sucessfully");
	con.close();
}
catch(Exception e)
{
   System.out.print(e);	}
%>