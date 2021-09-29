<%
String id=request.getParameter("id");
String pwd=request.getParameter("pwd");
if(id.equals("admin")&&pwd.equals("12345"))
{
	response.sendRedirect("admin.jsp");
}
else
{
	RequestDispatcher rd1=request.getRequestDispatcher("admin.html");
	rd1.include(request, response);
	out.println("<script>window.alert('Invalid id or password');</script>");
}
%>