<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.List" %>    
<%@ page import = "com.javaex.dao.PhoneDao" %>
<%@ page import = "com.javaex.vo.PersonVo" %>
<%@ page import = "java.sql.DriverManager" %>
   
<%
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> personlist = phoneDao.getPersonList();
	System.out.println(personlist.toString());
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>강태욱 전화번호 리스트</h1>
	<p>입력한 정보 내역.</p>
	<%for(int i = 0; i < personlist.size();i++) {
		PersonVo vo = personlist.get(i); %>
	<table border = 1>
	
	
		<tr>
			<td>이름</td>
			<td><%=vo.getName()%></td>
			<td><a href = "./delete.jsp?personId=<%=vo.getPersonId()%>">삭제</a></td>
			<td rowspan="3"><a href = "./updateform.jsp?personId=<%=vo.getPersonId()%>">변경</a></td>
		</tr>
		
		<tr>
			<td>핸드폰</td>
			<td colspan="2"><%=vo.getHp()%></td>
		</tr>
		
		<tr>
			<td>회사 번호</td>
			<td colspan="2"><%=vo.getCompany()%></td>
		</tr>
		
	</table>
	<br>
	<%} %>
	<a href = "./writeform.jsp" >추가 번호 등록</a>
</body>
</html>