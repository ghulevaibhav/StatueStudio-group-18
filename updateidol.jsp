<%@page import="com.Idol"%>
<jsp:useBean id="rd" class="com.Rdao"></jsp:useBean>
<%
String eid=request.getParameter("id");
int id=Integer.parseInt(eid);
String img=request.getParameter("img");
String name=request.getParameter("name");
String p=request.getParameter("price");
int price=Integer.parseInt(p);
String dis=request.getParameter("dis");
String material=request.getParameter("material");
Idol a=new Idol();
a.setId(id);
a.setName(name);
a.setPrice(price);
a.setDis(dis);
a.setImg(img);
a.setMaterial(material);
rd.updateIdol(a);
RequestDispatcher rd1=request.getRequestDispatcher("showidol.jsp");
rd1.include(request, response);
out.println("<script>window.alert('sucessfully updated');</script>");
%>