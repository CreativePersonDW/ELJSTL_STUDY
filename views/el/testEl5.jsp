<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">JSTL Core Library Tag Test</h1>
	
	<h2>c:set태그 -> 변수 선언</h2>
	<c:set var="num1" value="100" scope="session"/>
	<c:set var="num2" value="200" scope="session"/>
	<c:set var="sum" value="${num1 + num2 }"/>
	num1 변수 값 : ${param.num1 }<br>	
	num2 변수 값 : ${num2 }<br>	
	num1 + num2 : ${sum }<br>	
	


</body>
</html>