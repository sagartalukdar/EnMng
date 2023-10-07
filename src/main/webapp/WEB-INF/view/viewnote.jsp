<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false" %>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="css.jsp" %>
</head>
<body style="background-color:Linen">
<%@include file="navbar.jsp" %>
<c:forEach items="${notelist}" var="e">

<c:if test="${not empty upmsg }">
<h3 style="text-align: center; color:green;">${upmsg }</h3>
<c:remove var="upmsg"/>
</c:if>

<c:if test="${not empty delmsg }">
<h4 style="text-align: center; color: red;">${delmsg }</h4>
<c:remove var="delmsg"/>
</c:if>

<div style="padding: 10px; width:450px;margin:auto;margin-bottom:20px;background-color:LemonChiffon; border: 1px solid black;box-shadow: 0px 0px 8px gray;">
<div style="text-align: center;">
<i class="fa-solid fa-book-bookmark fa-2xl" style="color: #782121;"></i>
<img alt="js" src='<c:url value="/resource/img/images.png"></c:url>' width="110px",height="130px;">

</div>
  <div class="mb-3" style="margin-left: 70px;">
   <p><h5>${e.title }</h5></p>
   <p>${e.description }</p>
   <p>${e.date } </p>
  </div>
 <div style="text-align: center;">
 <a href="editnote/${e.id }" class="btn  btn-primary">Edit</a>
 <a href="deletenote/${e.id}" class="btn  btn-danger">Delete</a>
 </div>

</div>
</c:forEach>

</body>
</html>