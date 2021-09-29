<%
session.invalidate();
RequestDispatcher rd1=request.getRequestDispatcher("index.jsp");
rd1.include(request, response);
out.println("<script>window.alert('sucessfully Logout');</script>");
%>