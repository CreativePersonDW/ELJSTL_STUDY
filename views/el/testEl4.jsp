<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>requestScope출력하기</h2>
	이름 : ${member.name }<br>
	나이 : ${member.age }<br>
	연락처 : ${member.phone }<br>
	이메일 : ${member.email }<br>
	
	<!--
		Scope 종류
		
		application (톰캣이 끝날 때 까지)
		session (웹 브라우저 끝날 때 or 30분(기준) or 사용자 지정(분, 초)
		request (서비스 요청, 응답 각각 존재)
	 	page

	 	page -> application순으로 검사한다.
	 -->
	<%-- 이름 : ${requestScope.member.name }<br>
	나이 : ${requestScope.member.age }<br>
	연락처 : ${requestScope.member.phone }<br>
	이메일 : ${requestScope.member.email }<br> --%>
		
	<h2>sessionScope출력하기</h2>
	이름 : ${sessionScope.member.name }<br>
	나이 : ${sessionScope.member.age }<br>
	연락처 : ${sessionScope.member.phone }<br>
	이메일 : ${sessionScope.member.email }<br>
	
</body>
</html>