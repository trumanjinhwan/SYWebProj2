<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import = "java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 객체 사용하여 자원 읽기</title>
</head>
<body>
	<%
		String resourcePath = "/message/notice.txt";
	%>
	자원의 실제 경로:<br>
	<%= application.getRealPath(resourcePath) %>
	<br>
	----------------------------<br>
	<%
		char[] buff = new char[128];
		int len = -1;
		
		try(InputStreamReader br = new InputStreamReader(
				application.getResourceAsStream(resourcePath), "UTF-8")){
			while((len = br.read(buff)) != -1){
				out.print(new String(buff, 0, len));
			}
		}
		catch(IOException ex){
			out.println("오류 발생");
		}
	%>
</body>
</html>