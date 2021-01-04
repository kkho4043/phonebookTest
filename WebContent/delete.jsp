<%@page import="com.javaex.dao.PhoneDao"%>
<%@page import="com.javaex.vo.PersonVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String personId = request.getParameter("personId");
      
 	  PersonVo personvo = new PersonVo();
      
      PhoneDao phonedao = new PhoneDao();
    
      phonedao.parsonDelete(Integer.parseInt(personId));
      %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	삭제요청 완료
	<br>
	<a href = "./list.jsp" >리스트로 돌아가기</a>
</body>
</html>