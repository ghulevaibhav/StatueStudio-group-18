<jsp:include page="adminnav.jsp"></jsp:include>
<%
String name=request.getParameter("name");

String dis=request.getParameter("dis");

session.setAttribute("name", name);
session.setAttribute("dis", dis);

%>
Select a file to upload: <br />
      <form action = "UploadServlet2.jsp" method = "post"
         enctype = "multipart/form-data">
         <input type = "file" name = "file" size = "50" />
         <br />
         <input type = "submit" value = "Upload File" />
      </form>