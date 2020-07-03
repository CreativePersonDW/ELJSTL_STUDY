<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String pName = request.getParameter("name");
	int price = Integer.valueOf(request.getParameter("price"));
	String[] pNo = request.getParameterValues("no"); // 배열은 getParameterValues
	String option = request.getParameter("option");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿼리스트링에 의해 넘어온 Parameter값을 받아서 출력하기</h2>
	상품명 : <%=pName %><br>
	가격 : <%=price %><br>
	제품 번호 : <%=pNo[0] %>와 <%=pNo[1] %><br>
	<%if(option.equals("")){ %>
		옵션 : 옵션없음
	<%} else {%>
		옵션 : <%=option %><br>
	<%} %>
	
	<br>
	
	<h1>param으로 출력해보기</h1>
	상품명 : ${param.name}<br>
	가격 : ${param.price}><br>
	제품 번호 : ${paramValues.no[0]}과 ${paramValues.no[1]}<br> <!-- 배열은 paramValues -->
	옵션 : ${(empty param.option) ? "옵션 없음" : param.option}<br>
	
	
</body>
</html>