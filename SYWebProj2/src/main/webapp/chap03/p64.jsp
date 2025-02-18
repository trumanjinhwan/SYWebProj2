<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="utf-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재시간</title>
<%
	Date now = new Date();
%>
</head>
<body>
현재 시각:
<%=now %>
</body>
</html>