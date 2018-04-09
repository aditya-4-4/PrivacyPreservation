<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Anonymize your data</title>

    <!-- Google Fonts -->
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="css/index_style.css">
    <link rel="stylesheet" href="css/afterlogin_style.css">
    <script src="js/jquery-1.11.1.min.js"></script>
</head>

<body>
<form action="/getdatabaseservlet" method="post" name="myForm">
    <%
        response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
        response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
        response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
        response.setHeader("Pragma","no-cache");
        session=request.getSession(false);
        String admin_username =(String) session.getAttribute("USERNAME");
    %>
    <div class="container">
        <div  class="login-box">
            <div class="box-header" style="background-color: #665851">
                <h2 style="margin:10px;">Hi <%=admin_username%>! <a style="color:lavender; float: right; font-size: medium; font-weight: bolder;" href="adminlogoutservlet">Logout</a></h2>
            </div>
            <br/>
            <button type="submit">Get Databases List</button>
            <br/>
            <span style="color:red; font-size: medium; font-weight: bolder;"> ${param.err} </span>
        </div>
    </div>
</form>
</body>
</html>