<%@page import="com.Accessoires"%>
<%@page import="com.Idol"%>
<jsp:useBean id="rd" class="com.Rdao"></jsp:useBean>
<%
String img=request.getParameter("img");
String name=(String)session.getAttribute("name");
String p=(String)session.getAttribute("price");
int price=Integer.parseInt(p);
String dis=(String)session.getAttribute("dis");
String material=(String)session.getAttribute("material");
Accessoires a=new Accessoires(); 
a.setName(name);
a.setPrice(price);
a.setDis(dis);
a.setImg(img);
a.setMaterial(material);
int i=rd.addAccessoires(a);
RequestDispatcher rd1=request.getRequestDispatcher("admin.jsp");
rd1.include(request, response);
out.println("<script>window.alert('sucessfully added');</script>");
%>