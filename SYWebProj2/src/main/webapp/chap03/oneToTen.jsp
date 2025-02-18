<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1-10까지의 합</title>
</head>
<body>
	<%
		int sum = 0;
		int start = 1;
		int end = 10;
		
		while(start <= end){
			sum += start;
			start += 1;
		}
	%>
	
	1부터 10까지의 합은 <%=sum %> 입니다.
	<br><br>
	
		<%
		int sum2 = 0;
		int start2 = 1;
		int end2 = 20;
		
		while(start2 <= end2){
			sum2 += start2;
			start2 += 1;
		}
	%>
	
	1부터 20까지의 합은 <%=sum2 %> 입니다.
</body>
</html>