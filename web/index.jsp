<%@ page import="Sprint4_2.models.Item" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BITLAB Shop</title>
    <%@include file="source.jsp" %>
</head>
<body>
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
            <h1 class="display-4 fw-normal"><b>Welcome to BITLAB SHOP</b></h1>
            <p class="fs-5 text-muted">Electronic devices with high quality and service</p>
        </div>
    </header>
</div>
<div  style="display: flex; flex-wrap: wrap; width: 75%; justify-content: center; margin: auto" >
<% ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("items");
    if (items!=null){
        for(Item i : items){
%>
    <div >
       <div class="row text-center" style="margin: auto">
            <div class="col col-md-auto" style="width: 350px">
                <div class="card mb-4 rounded-3 shadow-sm">
                    <div class="card-header py-3">
                        <h4 class="my-0 fw-normal"><%=i.getName()%></h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title"><%=i.getPrice()%>
                        </h1>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li><%=i.getDescription()%></li>
                        </ul>
                        <button type="button" class="w-100 btn btn-lg btn-success">Buy Now</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <%
                }
            }
        %>
</body>
</html>