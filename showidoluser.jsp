<%@page import="com.Idol"%>
<%@page import="java.util.List"%>
<jsp:useBean id="rd" class="com.Rdao"></jsp:useBean>
<!DOCTYPE html>
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
 
<div class="container">
<div class="row">
<%
List<Idol> al=rd.showIdol();
for(Idol i:al)
{
	%>
	
  	<div class="col-sm-4">
  <div class="card" style="width:400px">
    <img class="card-img-top" src="<%=i.getImg() %>" alt="Card image" style="width:100%">
    <div class="card-body">
      <h4 class="card-title"><%=i.getName() %></h4>
      <h4 class="card-title">PRICE : <%=i.getPrice() %></h4>
      <h4 class="card-title">MATERIAL : <%=i.getMaterial() %></h4>
      <p class="card-text"><%=i.getDis() %></p>
      <a href="#" class="btn btn-primary">See Profile</a>
    </div>
  </div>
  <br>
  	</div>
  
	<%
}
%>
  </div>
</div>

</body>
</html>
