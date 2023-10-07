<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="css.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<div style="box-shadow: 0px 0px 12px grey;margin-left: 110px;margin-right: 110px;margin-bottom: 45px;">

<h2 style="text-align: center;">Welcome Back !</h2>
<p style="color: gray;text-align: center;">Please login to continue</p>

<c:if test="${not empty msg }">
<h4 style="text-align: center; color: green;">${msg }</h4>
<c:remove var="msg"/>
</c:if>

<div style="display: flex;">
<div class="logp" style="margin-left: 30px;">
<img alt="" src='<c:url value="resource/img/login.jpg"></c:url>' width="550px;" height="400px;">
</div>

<div>
<form action="ulog" method="post" style="margin-top: 40px;">

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" name="email">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="password">
  </div>
  
<div style="text-align: center;">
  <button type="submit" class="btn btn-md btn-primary" style="border-radius: 20px;width: 100px;">Login</button>
  <button class="btn btn-lg">Forgot Password ?</button>
  </div>
</form>
<div style="padding-top: 20px;">
<p>Don't have an account <a href="register"> Create One</a></p>
</div>

<div style="display: flex;">
<h4>Login With</h4>
<img alt="" src="resource/img/google.jpg" width="40 px", height="30px">
<img alt="" src="resource/img/facebook.png" width="40 px", height="30px">
<img alt="" src="resource/img/twitter.png" width="40 px", height="30px">
</div>

</div>
</div>

</div>
</body>
</html>