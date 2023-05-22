
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
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
    </header>
    <div>
        <%
        String wronguser = request.getParameter("wronguser");
        if(wronguser!=null){
        %>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            Incorrect <strong>email</strong> and/or <strong>password</strong>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <%
            }
        %>
        <form action="/login" method="post">
            <div class="card mb-4 rounded-3 shadow-sm">
                <div class="card-header py-3">
                    <h4 class="my-0 fw-normal">Login page</h4>
                </div>
                <div class="card-body">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email_entered">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" name="pwd_entered">
                    </div>
                    <button type="submit" class="btn btn-success">Login</button>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
</html>
