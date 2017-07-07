<%@page import="cart.bean.baseballBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
</head>
<body>
<%
	ArrayList<baseballBean> list=new ArrayList<baseballBean>();
	request.getSession().setAttribute("list", list);
%> 
	<form action="login.do?cmd=login" method="post">
		<input type="submit">
	</form>
</body>
</html>