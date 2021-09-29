<jsp:useBean id="u" class="com.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<jsp:useBean id="rd" class="com.Rdao"></jsp:useBean>
<%
rd.updateUser(u);
	RequestDispatcher rd1=request.getRequestDispatcher("index.jsp");
	rd1.include(request, response);
	out.println("<script>window.alert('updated profile sucessfully');</script>");

%>