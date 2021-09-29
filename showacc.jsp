<!DOCTYPE html>
<%@page import="com.Accessoires"%>
<%@page import="com.Idol"%>
<%@page import="java.util.List"%>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:useBean id="rd" class="com.Rdao"></jsp:useBean>
<jsp:include page="adminnav.jsp"></jsp:include>
<div class="container">
  <table class="table table-bordered">
    <thead>
      <tr>
      <th>ID</th>
        <th>NAME</th>
        <th>PRICE</th>
        <th>DETAILS</th>
        <th>MATERIAL</th>
        <th>IMAGE</th>
        <th>UPDATE</th>
        <th>DELETE</th>
      </tr>
    </thead>
    <tbody>
      <%
      List<Accessoires> al=rd.showAcc();
      for(Accessoires i:al)
      {
    	  %>
    	  <form action="updateacc.jsp">
    	  <tr>
    	  <td><input type="text" name="id" value="<%=i.getId() %>" readonly /></td>
    	  <td><select name="name">
<option><%=i.getName() %></option>
    	  
<option>Mukut</option>
<option>Diya_lambs</option>
<option>Sringhar_for_go</option>
<option>Necklace</option>
<option>Hastham_Patham</option>
<option>Toran</option>
<option>Jewellery</option>
<option>Thali</option>
</select></td>
<td><input type="text" name="price" value="<%=i.getPrice() %>" /></td>
<td><input type="text" name="dis" value="<%=i.getDis() %>" /></td>
<td>
<select name="material">
<option><%=i.getMaterial() %></option>
<option>Porcelain</option>
<option>Metal</option>
<option>Wood</option>
<option>Brass</option>
<option>Stone</option>
<option>Marble</option>
<option>Sphatik/Crystal</option>
<option>Mercury</option>
</select>
</td>
<td><img alt="no" src="<%=i.getImg() %>" height="100px" width="100px"><input type="hidden" name="img" value="<%=i.getImg() %>"></td>
<td><button class="btn btn-danger">Update</button></td>
<td><a href="deleteacc.jsp?id=<%=i.getId() %>" class="btn btn-danger">Delete</a></td>
    	  </tr>
    	  
    	  </form>
    	  <%
      }
      %>
    </tbody>
  </table>
</div>

</body>
</html>
