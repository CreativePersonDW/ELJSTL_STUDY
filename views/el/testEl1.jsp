<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%> --%>
    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- <%
	String name = (String)request.getAttribute("name");
	int age = (Integer)request.getAttribute("age");
	String phone = (String)request.getAttribute("phone");
	String email = (String)request.getAttribute("email");
	ArrayList items = (ArrayList)request.getAttribute("items");
%>     --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Servlet으로 부터 forwarding으로 전달 된 request 객체에 저장된 정보 출력하기</h2>
<%-- 	name : <%= name%><br>
		age : <%= age%><br>
		phone : <%= phone%><br>
		email : <%= email%><br> --%>
	
	
	<!-- EL태그는 page부터 application까지의 객체들을 확인해보고
		속성값이 일치하면 뽑아내 준다. -->
	name : ${ name }<br>
	age : ${ age }<br>
	phone : ${ phone }<br>
	email : ${ email }<br>
	
	<br>
	<h1>정확하게 뽑기위한 영역 선언</h1>
	name : ${ sessionScope.name }<br> <!-- session영역으로 선언해서 TestOneServlet에 장보고가 출력 -->
	age : ${ requestScope.age }<br>
	phone : ${ requestScope.phone }<br>
	email : ${ requestScope.email }<br>
	
	<br>
	<h2>items 이름으로 저장된 리스트 정보 출력하기</h2>
	<%-- <%for(int i=0; i<items.size(); i++){ %>
		<%=i %> : <%=items.get(i) %>
	<%} %> --%>	
	
	<%for(int i=0; i<3; i++){ %>
		<%=i %> : ${items[i] }<br>
	<%} %>
	
	0 : ${items[0] }	
	1 : ${items[1] }	
	2 : ${items[2] }	
	
	0 : ${requestScope.items[0] }	
	1 : ${requestScope.items[1] }	
	2 : ${requestScope.items[2] }	
	
	
	
	
</body>
</html>