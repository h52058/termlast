<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
<meta name="viewprot" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<title>Dog Home</title>
</head>
<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
        margin: 0;
        background-color: #ffffff;
    }
    
    img {
        top: 0;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }
    
    .header {
        padding: 5px;
        text-align: center;
        background: #a8e3e1;
        color: #000000;
    }
    
    .header h1 {
        font-size: 40px;
    }
    
    .navbar {
        overflow: hidden;
        background-color: #e6e6e6;
    }
    
    .navbar a {
        float: left;
        display: block;
        color: white;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
    }
    
    .navbar a.right {
        float: right;
    }
    
    .navbar a:hover {
        background-color: #ddd;
        color: black;
    }
    
    .footer {
        padding: 20px;
        height: 70px;
        text-align: center;
        background: #000000;
    }
    
    .dropbtn {
        background-color: #4f4a4a;
        color: white;
        padding: 16px;
        font-size: 16px;
        border: none;
        cursor: pointer;
    }
    
    .dropdown {
        position: relative;
        display: inline-block;
        background-color: #e6e6e6
    }
    
    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #e6e6e6;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
        z-index: 1;
    }
    
    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }
    
    .dropdown-content a:hover {
        background-color: #40249c
    }
    
    .dropdown:hover .dropdown-content {
        display: block;
        background-color: #f5f073;
    }
    
    .dropdown:hover .dropbtn {
        background-color: #40249c;
    }
    
    .search-container {
        float: right;
    }
    
    .search-container button {
        float: right;
    }
</style>

<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	%>
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
		</button>
	<a class="navbar-brand" href="main.jsp">Dog Home</a>
	</div>
	
	
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<li class="active"><a href="main.jsp">메인</a></li>
			<li><a href="bbs.jsp">게시판</a></li>
		</ul>
		
		<ul class="nav navbar-nav navbar">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">강아지정보<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="dogTra.jsp">강아지 훈련법</a></li>
				<li><a href="dogFood.jsp">강아지 사료정보</a></li>
				<li><a href="dogVac.jsp">예방접종</a></li>
			</ul>
		</li>
		</ul>
		<%
			if(userID == null) {
		%>
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="Login.jsp">로그인</a></li>
				<li><a href="join.jsp">회원가입</a></li>
			</ul>
		</li>
		</ul>
		<%
			} else {
		%>		
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="LogoutAction.jsp">로그아웃</a></li>
			</ul>
		</li>
		</ul>
		<%
			}
		%>
	</div>
</nav>
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
		
</body>
</html>