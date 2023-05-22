<%@ page import="Sprint4_2.models.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Page</title>
    <%@include file="source.jsp" %>
</head>
<body>
<%
  String fullName = (String) request.getAttribute("fullName");
%>
<div class="container py-3">
  <header>
    <div class="d-flex flex-column flex-md-row align-items-center pb-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
        <span class="fs-4"><b>BITLAB SHOP</b></span>
      </a>
      <nav class="d-inline-flex mt-2 mt-md-0 ms-md-auto">
        <a class="me-3 py-2 text-dark text-decoration-none" href="#">Top Sales</a>
        <a class="me-3 py-2 text-dark text-decoration-none" href="#">New Sales</a>
        <a class="me-3 py-2 text-dark text-decoration-none" href="#">By Category</a>
        <a class="py-2 text-dark text-decoration-none" href="login.jsp">Sign in</a>
      </nav>
    </div>
    <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
      <h1 class="display-4 fw-normal"><b>Hello <%=fullName%></b></h1>
      <p class="fs-5 text-muted">This is your profile page</p>
    </div>
  </header>
</div>
</body>
</html>
