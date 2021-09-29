<!DOCTYPE html>
<%@page import="com.Slider"%>
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
<jsp:include page="adminnav.jsp"></jsp:include>
<jsp:useBean id="rd" class="com.Rdao"></jsp:useBean>
<div class="container">
  <table class="table table-bordered">
    <thead>
      <tr>
      <th>ID</th>
        <th>NAME</th>
   
        <th>DETAILS</th>
       
        <th>IMAGE</th>
        <th>UPDATE</th>
        <th>DELETE</th>
      </tr>
    </thead>
    <tbody>
      <%
      List<Slider> al=rd.showoffer();
      for(Slider i:al)
      {
    	  %>
    	  <form action="">
    	  <tr>
    	  <td><input type="text" name="id" value="<%=i.getId() %>" readonly /></td>
    	  <td><input type="text" name="name" value="<%=i.getName() %>" readonly /></td>

<td><input type="text" name="dis" value="<%=i.getDis() %>" /></td>

<td><img alt="no" src="<%=i.getImg() %>" height="100px" width="100px"><input type="hidden" name="img" value="<%=i.getImg() %>"></td>
<td><button class="btn btn-primary">Update</button></td>
<td><a href="deleteoffer.jsp?id=<%=i.getId() %>" class="btn btn-primary">Delete</a></td>
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
