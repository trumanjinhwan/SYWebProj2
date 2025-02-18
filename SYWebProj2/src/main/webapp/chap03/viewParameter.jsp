<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 출력</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	name 파라미터 : <%= request.getParameter("name") %><br>
	address 파라미터 : <%= request.getParameter("address") %><br>
	
	<p>
		<%
			String[] values = request.getParameterValues("pet");
			if(values != null){
				for (String i :values){
					out.print(i + " ");
					out.print("<br><br>");
				}
			}
		
			Enumeration paramEnum = request.getParameterNames();
			while(paramEnum.hasMoreElements()){
				String name = (String) paramEnum.nextElement();
				out.print(name + " " + "<br>");
			}
			
			out.print("<br><br>");
			
			Map parameterMap = request.getParameterMap();
			String[] nameParam = (String[]) parameterMap.get("name");
			if(parameterMap != null){
				out.print("name = " + nameParam[0] + "<br>");
			}
 		%>
	</p>
</body>
</html>