<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import = "java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>졸대 경로 사용하여 자원 읽기</title>
</head>
<body>
	<%
		char[] buff = new char[128];
		int len = -1;
		
		String filePath = "C:\\Users\\82104\\hi.txt";
		try(InputStreamReader fr = new InputStreamReader(
				new FileInputStream(filePath), "UTF-8")){
			while((len = fr.read(buff)) != -1){
				out.print(new String(buff, 0, len));
			}
		}
		catch(IOException ex){
			out.println("오류 발생");
		}
	%>
</body>
</html>