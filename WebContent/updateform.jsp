<%@page import="com.javaex.dao.PhoneDao"%>
<%@page import="com.javaex.vo.PersonVo"%>
<%@ page import = "java.util.List" %> 

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String personId = request.getParameter("personId");
      
 	  PersonVo personvo = new PersonVo();
      
      PhoneDao phonedao = new PhoneDao();
      
      int personnum = Integer.parseInt(personId);
      String name = null;
      String hp = null;
      String company = null;
      
      
      
      PhoneDao phoneDao = new PhoneDao();
      List<PersonVo> personlist = phoneDao.getPersonList();
      
      for(int i = 0; i < personlist.size();i++) {
  		PersonVo vo = personlist.get(i);
  		
  		if(vo.getPersonId() == personnum){
  			name = vo.getName();
  			hp = vo.getHp();
  			company = vo.getCompany();
  			break;
  		}
      }
      phonedao.parsonDelete(Integer.parseInt(personId));
      %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action = "./update.jsp" method="get" >
			<input type="hidden" name ="personId" value = "<%=personnum%>">
			이름 : <input type="text" name = "name" value= "<%=name%>" > <br>
			핸드폰 : <input type="text" name = "hp" value= "<%=hp%>" > <br>
			회사 : <input type="text" name = "company" value= "<%=company%>" > <br>
			<button type = "submit">변경</button>	
	</form>

	<br>
	<a href = "./list.jsp" >리스트로 돌아가기</a>
</body>
</html>