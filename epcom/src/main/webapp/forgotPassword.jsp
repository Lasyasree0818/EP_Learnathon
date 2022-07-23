<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="forgotpasswordaction.jsp" method="post"></form>
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="number" name="mobileno" placeholder="Enter mobile number" required>
     <select name="securityquestion">
     <option value="In what city were you born?">In what city were you born?</option>
       <option value="What is the name of your favorite pet?">What is the name of your favorite pet?</option>
       <option value="What is your mother's maiden name?">What is your mother's maiden name?</option>
       <option value="What high school did you attend?">What high school did you attend?</option>
     </select>
     <input type="text" name="answer" placeholder="Enter Answer" required>
      <input type="password" name="newpassword" placeholder="Enter New password" required>
       <input type="submit" value="save">
     
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <%
  String msg=request.getParameter("msg");
  if("done".equals(msg))
		  {		  
  %>
<h1>Password Changed Successfully!</h1>
<%
}
%>
<%
  if("invalid".equals(msg))
		  {		  
  %>
<h1>Some thing Went Wrong! Try Again !</h1>
<%
}
%>
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>