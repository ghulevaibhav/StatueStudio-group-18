<%@page import="com.Accessoires"%>
<%@page import="com.Idol"%>
<jsp:useBean id="rd" class="com.Rdao"></jsp:useBean>
<%
String eid=request.getParameter("id");
int id=Integer.parseInt(eid);
Accessoires a=new Accessoires();
a.setId(id);
rd.deleteAccessoires(a);
RequestDispatcher rd1=request.getRequestDispatcher("showacc.jsp");
rd1.include(request, response);
out.println("<script>window.alert('sucessfully deleted');</script>");
%>