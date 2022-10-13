<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 연습</title>
</head>
<body>
	<c:set var="score" value="99"/>
	
	<h1>score : <c:out value="${score }"/></h1>
	<br>
	<c:remove var="score"/>
	
	삭제 후 score 출력 : <c:out value="${score }"/>
	<br>
	
	예외 처리 :<br>
	<c:catch var="error">
		<%= 10/0 %>
	</c:catch>
	<c:out value="${error }"/>
	<br>
	
	if문 :<br>
	<c:if test="${10>30 }">
		TRUE입니다.
	</c:if>
	<br>
	
	if-else문 :<br> 
	<c:choose>
		<c:when test="${10>30 }">
			TRUE 입니다.
		</c:when>
		<c:otherwise>
			FALSE 입니다.
		</c:otherwise>
	</c:choose><br>
	
	if-else if문 :<br> 
	<c:choose>
		<c:when test="${10>3 }">
			TRUE 입니다.
		</c:when>
		<c:when test="${1>30 }">
			TRUE 입니다.
		</c:when>
		<c:otherwise>
			FALSE 입니다.
		</c:otherwise>
	</c:choose>
	<br>
	
	for문 : <br>
	<c:forEach var="i" begin="0" end="9" step="1">
		${i }<br>
	</c:forEach>
	
	<!-- 
	<c:forEach var="data" items="${list }">
		${data.subject } ${data.name }...
	</c:forEach>
	-->
</body>
</html>