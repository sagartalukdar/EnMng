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
<style type="text/css">
.txt{
position: absolute;
z-index: -1;
top: 140px;
left: 50px;

}

.bk{
position:absolute;
z-index: -10;

opacity: 0.4;
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="bk">
<img alt="rtt" src='<c:url value="resource/img/penbook.webp" ></c:url>' width="100%" >
</div>
<div class="txt">

 <h1 style="text-align: center;">Welcome to Enotes</h1>

<c:if test="${not empty msg }">
<h3 style="text-align:center; color: red;">${msg }</h3>
<c:remove var="msg"/>
</c:if>


 <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Fuga alias earum nobis voluptatibus, debitis illum fugit sint soluta hic quae voluptate in vel quos asperiores, aspernatur perspiciatis delectus. Beatae voluptatum ipsum, in aliquam ratione magnam odio accusantium illo dolorum saepe voluptates earum dolores aperiam vero iste voluptate quia officia nostrum dolor eligendi impedit, harum enim. Provident alias adipisci unde eos magni consequatur modi nihil quod nulla? Atque sapiente quia accusamus maxime iste ipsam molestias nam dolorem officiis reprehenderit vitae eius error reiciendis in amet laudantium possimus, mollitia cupiditate nulla, sequi excepturi, illo non! Iste architecto fuga distinctio, blanditiis doloremque possimus dolorum soluta impedit laborum. Aperiam dolor sequi, et distinctio reprehenderit libero magni iste. Laboriosam veritatis incidunt officia. Nulla nobis sequi unde illum ex possimus nihil! Neque molestiae et repudiandae id quam ea nam, exercitationem dolorem. Sit fugiat doloribus ipsa est culpa eligendi iusto vitae cupiditate id? Debitis porro distinctio inventore tempore totam nulla odit explicabo eaque! Numquam praesentium tempora voluptate eum sunt! Commodi dicta deleniti dolorum facilis voluptatum numquam nobis nam consequuntur distinctio officia exercitationem veniam mollitia cumque, sint tenetur optio nihil rerum voluptates possimus tempore. Accusamus non quod inventore cupiditate libero dolores, ab deleniti odit veritatis quo totam doloremque. Consequuntur debitis laboriosam, dicta iusto, enim ad nemo error mollitia modi illum, tempora eos rem eum. Accusantium asperiores, sunt, unde qui maiores alias cumque nesciunt explicabo animi numquam blanditiis tempore aut nisi laudantium placeat aliquam soluta maxime? Tempore incidunt vel, voluptates dolorum, dolorem aperiam labore ut nemo id assumenda repudiandae!</p>

</div>
</body>
</html>