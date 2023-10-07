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
<style >
.im{
position:absolute;
z-index: 1;
width: 100%;
height: 70%;
opacity:0.6;
}
.form{
position: absolute;
z-index: 10;
left: 380px;
top: 60px;
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>

<div class="im">
<img alt="" src='<c:url value="resource/img/aurora.png"></c:url>' width="100%">
</div>

<div class="form" style="padding-left:90px; padding-right:90px;padding-top:16px;height:550px; width: 550px;margin: auto;  margin-top: 20px;border: 2px solid white;border-radius: 15px;">
<h2 style="text-align: center;">Registration</h2>
<c:if test="${not empty msg }">
<h4 style="text-align: center; color: green;">${msg }</h4>
<c:remove var="msg"/>
</c:if>
  <p >Allready have an account ?<a href="login" style="color: white;"> Please Login</a></p>
<form action="userregister" method="post">
   <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label"></label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="fullname" placeholder="Full Name">
  </div>
   <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label"></label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="address" placeholder="Address">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label"></label>
    <input type="email" class="form-control" id="exampleInputEmail1" name="email" placeholder="Email address">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label"></label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="password">
  </div>
   <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1" style="color: white;">I agree to the terms and conditions</label>
  </div>
<div style="text-align: center;">
  <button type="submit" class="btn btn-primary" style="border: 2px solid white;border-radius: 20px;width: 120px;">Register</button>
  </div>

</form>

</div>

</body>
</html>