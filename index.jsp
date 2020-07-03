<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">welcome EL & JSTL Test</h1>
	
	<h2>jsp Action Tag</h2>
	<h3><a href="views/jspActionTag/testAction.jsp">jsp Action Tag</a></h3>
	
	<br>
	<h2>EL test</h2>
	<h3><a href="test1">request.getAttribute() 테스트</a></h3>
	<h3><a href="test2">request에 저장된 객체 출력 테스트</a></h3>
	<h3><a href="views/el/testEl3.jsp?name=galluxy&price=95&no=5&no=6&option=">parameter 값을 전달한 경우의 el 테스트</a></h3>
	<h3><a href="test4">requestScope와 sessionScope 테스트</a></h3>
	
	<h3><a href="test5">테스트</a></h3>
	
	
	<br>
	<h2>JSTL test</h2>
	<h2><a href="views/jstl/testJstlCore.jsp">core Library Test</a></h2>
	<h2><a href="views/jstl/testJstlFmt.jsp">Fmt Library Test</a></h2>
	<h3><a href="views/jstl/testJstlFunction.jsp"></a>Function Library Test</h3>
</body>
</html>