<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>나 testFoward야</h1>
	
	<!--
		POJO : 일반적인 자바 객체들 
		bean : 스프링이 관리하는 객체들, Serializable, getter, setter, 기본생성자
	-->
	
	<jsp:useBean id="m" class="com.kh.el.model.vo.Member" scope="page"/>
	<jsp:setProperty property="name" name="m" value="김유저"/>	
	<jsp:setProperty property="age" name="m" value="20"/>	
	<jsp:setProperty property="phone" name="m" value="010-1234-5678"/>	
	<jsp:setProperty property="email" name="m" value="user@naver.com"/>	
	
	<h2>jsp:useBean 활용하기</h2>	
	이름 : <jsp:getProperty property="name" name="m"/><br>
	나이 : <jsp:getProperty property="age" name="m"/><br>
	연락처 : <jsp:getProperty property="phone" name="m"/><br>
	이메일 : <jsp:getProperty property="email" name="m"/><br>
	
</body>
</html>