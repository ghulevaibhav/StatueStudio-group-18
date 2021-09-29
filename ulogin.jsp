<jsp:useBean id="u" class="com.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<jsp:useBean id="rd" class="com.Rdao"></jsp:useBean>
<%
boolean i=rd.checkLogin(u);
if(i)
{
	session.setAttribute("email", u.getEmail());
	RequestDispatcher rd1=request.getRequestDispatcher("index.jsp");
	rd1.include(request, response);
	
}
else
{
	RequestDispatcher rd1=request.getRequestDispatcher("index.jsp");
	rd1.include(request, response);
	out.println("<script>window.alert('Invalid email or password');</script>");
}
%>