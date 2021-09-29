<jsp:useBean id="c" class="com.Cart"></jsp:useBean>
<jsp:useBean id="rd" class="com.Rdao"></jsp:useBean>
<jsp:setProperty property="*" name="c"/>
<%
int i=rd.addCart(c);
if(i>0)
{
	RequestDispatcher rd1=request.getRequestDispatcher("index.jsp");
	rd1.include(request, response);
	out.println("<script>window.alert('sucessfully added to cart');</script>");
}
else
{
	RequestDispatcher rd1=request.getRequestDispatcher("index.jsp");
	rd1.include(request, response);
	out.println("<script>window.alert('something went wrong');</script>");
}
%>