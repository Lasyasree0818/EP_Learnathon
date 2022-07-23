<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
      <form action="sigupaction.jsp" method="post">
      <input type="text" name="user" placeholder="Enter Name" required>
      <input type="email" name="email" placeholder="Enter Email" required>
       <input type="number" name="number" placeholder="Enter Mobile Number" required>
       <select name="securityquestion" required>
       <option value="In what city were you born?">In what city were you born?</option>
       <option value="What is the name of your favorite pet?">What is the name of your favorite pet?</option>
       <option value="What is your mother's maiden name?">What is your mother's maiden name?</option>
       <option value="What high school did you attend?">What high school did you attend?</option>
       </select>
       <input type="text" name="answer" placeholder="Enter answer" required>
       <input type="password" name="password" placeholder="password" required>
       <input type="submit" name="Signup" >
      </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>

<%
String msg=request.getParameter("msg");  
if ("valid".equals(msg))
{
%>
<h1>Successfully Registered</h1>
<% } %>
<% 
if ("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<% } %> 

    <h2>HEALTH AND WELLNESS</h2>
    <p>health is a state of being, whereas wellness is the state of living a healthy lifestyle </p>
  </div>
</div>

</body>
</html>