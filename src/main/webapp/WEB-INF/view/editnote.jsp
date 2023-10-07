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
<div style="padding: 30px;margin: 45px;background-color: wheat;">
<form action="${pageContext.request.contextPath }/user/editednote" method="post">
<h3 style="text-align: center;">Edit Any Update</h3>

<c:if test="${not empty msg }">
<h5 style="text-align:center; color: green;">${msg }</h5>
<c:remove var="msg"/>
</c:if>


  <div class="mb-3">
    <label for="title" class="form-label">Enter Title</label>
    <input type="text" class="form-control" id="title" aria-describedby="emailHelp" name="title" value="${en.title }">
    <div id="emailHelp" class="form-text">Choose any suitable as your choices.</div>
  </div>
  <div class="form-floating">
  <textarea class="form-control" placeholder="Leave a description here" id="floatingTextarea" name="description" >${en.description }</textarea>
  <label for="floatingTextarea">Leave a description here</label>
</div>
<input type="hidden" name="id" value="${en.id }">
<div style="text-align: center;margin-top: 14px;">
  <button type="submit" class="btn btn-success">Edit Note</button>
 </div> 
</form>
</div>
</body>
</html>