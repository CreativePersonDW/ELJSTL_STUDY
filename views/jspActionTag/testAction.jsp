<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- <%@ include file="common.jsp" %> --%>
	<%-- <jsp:include page="common.jsp"></jsp:include> --%>
	
	<jsp:include page="common.jsp"/>
	
	여기는 testAction.jsp페이지 입니다.
	
	<jsp:forward page="testForward.jsp"/>
	
	
	
</body>
</html>