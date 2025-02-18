<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인에 실패</title>
</head>
<body>
	<%
		String id = request.getParameter("memberId");
		if(id != null && id.equals("madvirus")){
			response.sendRedirect("index.jsp");
		}
		else{
			out.print("잘못된 아이디 입니다.");
		}
	%>
</body>
</html>