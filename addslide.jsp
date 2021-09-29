<%@page import="com.Slider"%>
<%@page import="com.Idol"%>
<jsp:useBean id="rd" class="com.Rdao"></jsp:useBean>
<%
String img=request.getParameter("img");
String name=(String)session.getAttribute("name");
String dis=(String)session.getAttribute("dis");
Slider a=new Slider();
a.setName(name);
a.setDis(dis);
a.setImg(img);

int i=rd.addSlider(a);
RequestDispatcher rd1=request.getRequestDispatcher("admin.jsp");
rd1.include(request, response);
out.println("<script>window.alert('sucessfully added');</script>");
%>