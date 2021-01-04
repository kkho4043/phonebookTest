<%@page import="com.javaex.dao.PhoneDao"%>
<%@page import="com.javaex.vo.PersonVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String name = request.getParameter("name"); 
      String hp = request.getParameter("hp");
      String company = request.getParameter("company");
      
      PersonVo personvo = new PersonVo(name,hp,company);
      
      PhoneDao phonedao = new PhoneDao();
      
      phonedao.personInsert(personvo);
      %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	등록요청 완료
	<br>
	<a href = "./list.jsp" >리스트로 돌아가기</a>
</body>
</html>