<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href=""><i class="fa-solid fa-clipboard fa-lg" style="color: #fffafa;"></i>&nbspEnotes</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath }/home"><i class="fa-solid fa-house-circle-check fa-lg" style="color: #f5f9ff;"></i>&nbspHome</a>
        </li>
        <c:if test="${not empty logeduser }"> 
        <li class="nav-item">
          <a class="nav-link active" href="${pageContext.request.contextPath }/user/addnote"><i class="fa-solid fa-pen fa-lg" style="color: #e4e7ec;"></i>&nbspAdd Notes</a>
        </li>
          <li class="nav-item">
          <a class="nav-link active" href="${pageContext.request.contextPath }/user/viewnote"><i class="fa-regular fa-eye fa-lg" style="color: #f4f5f5;"></i>&nbspView Notes</a>
        </li>
        </c:if>
      </ul>
      <form class="d-flex">
      <c:if test="${not empty logeduser }">
      <a href="" class="btn btn-sn btn-light "><i class="fa-solid fa-user fa-lg"></i>&nbsp${logeduser.fullname }</a>
       &nbsp<a href="${pageContext.request.contextPath }/logout" class="btn btn-sn btn-light ">Logout&nbsp<i class="fa-solid fa-right-from-bracket fa-lg"></i></a>
      </c:if>
       <c:if test="${empty logeduser }">
       <a href="login" class="btn btn-sn btn-light "><i class="fa-solid fa-right-to-bracket fa-lg"></i>&nbspLogin</a>
       &nbsp<a href="register" class="btn btn-sn btn-light "><i class="fa-regular fa-registered fa-lg" style="color: #ff1414;"></i>&nbspRegister</a>
       </c:if>
      </form>
    </div>
  </div>
</nav>