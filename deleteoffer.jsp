<%@page import="com.Slider"%>
<%@page import="com.Idol"%>
<jsp:useBean id="rd" class="com.Rdao"></jsp:useBean>
<%
String eid=request.getParameter("id");
int id=Integer.parseInt(eid);
Slider a=new Slider();
a.setId(id);
rd.deleteSlide(a);
RequestDispatcher rd1=request.getRequestDispatcher("showoffer.jsp");
rd1.include(request, response);
out.println("<script>window.alert('sucessfully deleted');</script>");
%>