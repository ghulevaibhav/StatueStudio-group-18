<jsp:useBean id="u" class="com.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<jsp:useBean id="rd" class="com.Rdao"></jsp:useBean>
<%
String i=rd.saveUser(u);
if(i!=null)
{
	RequestDispatcher rd1=request.getRequestDispatcher("index.jsp");
	rd1.include(request, response);
	out.println("<script>window.alert('sucessfully registerd');</script>");
}
else
{
	RequestDispatcher rd1=request.getRequestDispatcher("index.jsp");
	rd1.include(request, response);
	out.println("<script>window.alert('please try again');</script>");
}
%>