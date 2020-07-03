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
	num1 변수 값 : ${num1 }<br>	
	num2 변수 값 : ${num2 }<br>	
	num1 + num2 : ${sum }<br>	
	
	<!-- 기본적으로 excapeXml이라는 속성 값은 true로 처리가 됨 -->
	<h2>c:out 태그 : 값 출력용</h2>
	<c:out value="core 라이브러리의 <out> 태그는 값을 화면에 출력하는 태그이다."/><br>
	<c:out value="<title>은<head>의 하위이다."/>
	
	<c:out value="<h2>데이터 출력</h2>" escapeXml="false"/><br>
	<c:out value="<h2>데이터 출력</h2>" escapeXml="true"/><br>
	
	<h2>c:out 태그의 default 속성</h2>
	<c:out value="${param.name}"/><br>
	<c:out value="${param.name}" default="김유저"/><br>
	
	<h2>c:if 태그 : 조건문</h2>
	<c:set var="value1" value="300" scope="page"/>
	<c:set var="value2" value="300" scope="page"/>
	value1의 값은 <c:out value="${value1 }"/>이고, value2의 값은
	<c:out value="${value2 }"/>입니다.
	
	<c:if test="${value1 le value2 }"> <!-- le는 >=과 같다.(자리수가 다를때) -->
		<h3>value1이 더 크거나 같다.</h3>
	</c:if>
	
	<c:if test="${value1 gt value2 }"> <!-- gt는 <과 같다.(자리수가 다를때) -->
		<h3>value2가 더 큽니다.</h3>
	</c:if>
	
	
	<!-- 대소 비교를 위한 el태그 안의 el기호 연산자는 쓰지 말자!!!
		왜냐하면 자릿수에 따라 비교하는 연산자의 방향이 바뀌기 떄문이다. -->
	<c:if test="${value1 eq value2 }"> <!-- eq는 두값이 같은지 비교 -->
		<h3>value1과 value2가 같습니다.</h3>
	</c:if>
	
	<h2>c:choose -> switch문, c:when -> case, c:otherwise -> default</h2>
	<c:set var="no" value="3"/>
	
	no의 값은 <c:out value="${no }"/>입니다.
	<c:choose>
		<c:when test="${no eq 1 }"><h3>안녕하세요.</h3></c:when>
		<c:when test="${no eq 2 }"><h3>반갑습니다.</h3></c:when>
		<c:otherwise><h3>환영합니다.</h3></c:otherwise>
	</c:choose>
	<hr>
	
	<h2>c:set 태그 : 배열 또는 컬렉션 선언</h2>
	<c:set var="colors">
		red, yellow, green, orange, blue, magenta
	</c:set>
	colors 배열 값 확인 : ${colors }<br>
	<hr>
	
	<h2>c:remove 태그 : 변수 삭제</h2>
	<c:remove var="num1" scope="session"/>
	num1 변수 값 : ${num1 }<br>
	num2 변수 값 : ${num2 }<br>
	<hr>
	
	<h2>c:forEach 태그 : for문</h2>
	<c:forEach begin="1" end="10">
		반복 실행<br>		
	</c:forEach>
	
	<br>
	<c:forEach var="size" begin="1" end="7" step="1">
		<font size="${size }">글자크기${size }</font><br>
	</c:forEach>
	<br>
	
	<h2>c:forTokens 태그 : 문자열을 토큰으로 분리 처리할 때 사용</h2>
	<c:forTokens var="color" items="yellow blue pink red green" delims=" ">
		${color }<br>
	</c:forTokens>	
	<br>
	
	<h2>c:url 태그 : 링크 설정 정보 별도 지정시 사용하는 태그</h2>
	<c:url var="fmtlink" value="testJstlCoreResult.jsp">
		<c:param name="num" value="777"/>
		<c:param name="num1" value="999"/>
	</c:url>
	<a href="${fmtlink }">결과 화면 연결</a>
	
	
</body>
</html>