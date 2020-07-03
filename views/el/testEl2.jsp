<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.el.model.vo.Member"%>    
 <%
 	Member m = (Member)request.getAttribute("member");
 %>  --%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>전달 된 request 객체에 저장 된 Member 객체 필드값 출력하기</h2>
<%-- 	이름 : <%=m.getName() %><br>
		나이 : <%=m.getAge() %><br>
		연락처 : <%=m.getPhone() %><br>
		이메일 : <%=m.getEmail() %><br> --%>
	
	
	이름 : ${member.name}<br>
	나이 : ${member.age}<br>
	연락처 : ${member.phone}<br>
	이메일 : ${requestScope.member.email}<br>
	
	<!-- 
		★★
			EL태그를 썻을 떄 객체의 멤버변수 값을 추출하기 위해서는 getter를 쓰는것이 아닌
			멤버 변수명을 직접 써야 된다.(내부적으로는 getter를 멤버변수명에 따라 자동실행) 
		★★
	 -->



</body>
</html>