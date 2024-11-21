<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" integrity="sha512-jnSuA4Ss2PkkikSOLtYs8BlYIeeIK1h99ty4YfvRPAlzr377vr3CXDb7sb7eEEBYjDtcYj+AjBH3FLv5uSJuXg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel='stylesheet'href='css/style.css'>
<style>
    /* div {
        width: 300px;
        height: 300px;
    } */
    /* .btn-cookie {
        background-color: #e4cbb3;
    }
    .cookie-disabled {
        background-color: #d8c0a988;
    }
    .btn-cookie:hover {
        background-color: #f1d3b7;
    } */
</style>
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-cookie">Cookie Theme Example</h1>
        <button class="btn btn-cookie">Cookie Button</button>
        <button class="btn btn-cookie-secondary">Secondary Button</button>
        <button class="btn btn-cookie" disabled>Disabled Cookie Button</button>
        <button class="btn btn-cookie-secondary" disabled>Disabled Secondary Button</button>
        <div class="bg-cookie text-white p-3 mt-3">
          This is a cookie background color!
        </div>
        <div class="bg-cookie-secondary text-white p-3 mt-3">
          This is a secondary cookie background color!
        </div>
      </div>
</body>
</html>