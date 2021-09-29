<%@page import="com.Idol"%>
<jsp:useBean id="rd" class="com.Rdao"></jsp:useBean>
<%
String eid=request.getParameter("id");
int id=Integer.parseInt(eid);
Idol a=new Idol();
a.setId(id);
rd.deleteIdol(a);
RequestDispatcher rd1=request.getRequestDispatcher("showidol.jsp");
rd1.include(request, response);
out.println("<script>window.alert('sucessfully deleted');</script>");
%>