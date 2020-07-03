<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1 align="center">JSTL Fmt Library Tag Test</h1>

	<h2>fmt:formatNumber 태그 : 숫자에 포맷 적용하는 태그</h2>
	<c:set var="number" value="123456789"/>

	<fmt:formatNumber value="${number }" groupingUsed="true"/><br>
	
	<fmt:formatNumber value="1.1254567" pattern="#.##"/><br>
	<fmt:formatNumber value="1.2" pattern="#.##"/><br>
	<fmt:formatNumber value="1.2" pattern="#.00"/><br>
	
	<fmt:formatNumber value="0.12" type="percent"/><br>
	<fmt:formatNumber value="123456789" type="currency"/><br>
	<fmt:formatNumber value="1000" type="currency" currencySymbol="$"/><br>
	
	<h2>fmt:formatDate 태그 : 날짜와 시간에 포맷 적용하는 태그</h2>
	<c:set var="today" value=""/>
	<c:set var="today" value="<%= new java.util.Date() %>"/>
	오늘 날짜 : <fmt:formatDate value="${today }" type="date"/><br>
	현재 시간 : <fmt:formatDate value="${today }" type="time"/><br>
	오늘 날짜와 현재 시간 : <fmt:formatDate value="${today }" type="both"/><br>
	
	<h3>원하는 포맷으로 pattern 적용하는 경우</h3>
	현재 날짜 : <fmt:formatDate value="${today }" type="date" pattern="yyyy/MM/dd (E요일)"/><br>
	현재 시각 : <fmt:formatDate value="${today }" type="time" pattern="(a) hh:mm:ss"/><br>
	
	
	
	
	
	
	
	
</body>
</html>