<style>
		body
		{
			background-image: url('back.gif');
			background-attachment: fixed;
			background-repeat: no-repeat;
			background-size: 100%,100%;
		}
	</style>
<%
String name=request.getParameter("name");
String price=request.getParameter("price");
String dis=request.getParameter("dis");
String material=request.getParameter("material");
session.setAttribute("name", name);
session.setAttribute("price", price);
session.setAttribute("dis", dis);
session.setAttribute("material", material);
%>
Select a file to upload: <br />
      <form action = "UploadServlet.jsp" method = "post"
         enctype = "multipart/form-data">
         <input type = "file" name = "file" size = "50" />
         <br />
         <input type = "submit" value = "Upload File" />
      </form>