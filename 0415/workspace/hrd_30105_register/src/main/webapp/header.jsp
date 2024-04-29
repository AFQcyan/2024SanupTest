<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청 페이지</title>
<style>

* {
	text-decoration: none;
	list-style: none;
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

header {
	width: 100%;
	height: 100px;
	text-align: center;
}
header h2 {
	height: 50px;
	line-height: 50px;
	text-align:center;
	color: white;
	background-color: #009aff;
	margin: 0;
}
header nav {
	height: 50px;
	background-color: #00229a;
	display: flex;
	justify-content: start;
	gap: 30px;
	padding: 0 20px;
}
header nav *{
	color: white;
	line-height: 50px;
	display: block;
}
#container {
	min-height: calc(100vh - 100px - 50px);
	background-color: #ccc;
	padding-top: 75px;
}
#cont-title {
	padding: 10px 15px;
	text-align: center;
}
#inner-container {
	display:flex;
	text-align:center;
	align-items:center;
	justify-content:center;
}
td {
padding: 5px 15px;
}
td input {
	padding: 5px 15px;
}


</style>
</head>
<body>
	<header>
		<h2>수강신청 도우미 사이트</h2>
		<nav>
			<a href="./showList.jsp">교과목목록 조회/수정</a>
			<a href="./insert.jsp">교과목 추가</a>
			<a href="./index.jsp">홈으로</a>
		</nav>
	</header>
	<section id="container">