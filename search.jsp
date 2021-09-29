<%@page import="com.*"%>
<%@page import="java.util.List"%>
<jsp:useBean id="rd" class="com.Rdao"></jsp:useBean>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
		body
		{
			background-image: url('back.gif');
			background-attachment: fixed;
			background-repeat: no-repeat;
			background-size: 100%,100%;
		}
	</style>
  <title>StatueStudio</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">StatueStudio</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Idol <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="search.jsp?name=Durga">Durga</a></li>
          <li><a href="search.jsp?name=Lord_Ganesha">Lord_Ganesha</a></li>
          <li><a href="search.jsp?name=krishna">krishna</a></li>
          <li><a href="search.jsp?name=Lakshmi">Lakshmi</a></li>
          <li><a href="search.jsp?name=Nataraja">Nataraja</a></li>
          <li><a href="search.jsp?name=Parvati">Parvati</a></li>
          <li><a href="search.jsp?name=Sarasvati">Sarasvati</a></li>
          <li><a href="search.jsp?name=Shiva">Shiva</a></li>
          <li><a href="search.jsp?name=Ram_darbar">Ram_darbar</a></li>
        </ul>
      </li>
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Accessoires <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="search1.jsp?name=Mukut">Mukut</a></li>
          <li><a href="search1.jsp?name=Diya_lambs">Diya_lambs</a></li>
          <li><a href="search1.jsp?name=">Sringhar_for_go</a></li>
          <li><a href="search1.jsp?name=Sringhar_for_go">Necklace</a></li>
          <li><a href="search1.jsp?name=Hastham_Patham">Hastham_Patham</a></li>
          <li><a href="search1.jsp?name=Toran">Toran</a></li>
          <li><a href="search1.jsp?name=Jewellery">Jewellery</a></li>
          <li><a href="search1.jsp?name=Thali">Thali</a></li>
        </ul>
      </li>
      <li><a href="about.jsp">About</a></li>
     
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
    <%
String email=(String)session.getAttribute("email");
if(email==null||email.equals(""))
{
%>
<li><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
<%
}
else
{
	%>
	<li><a href="cart.jsp?email=<%=email%>"><span class="glyphicon glyphicon-envelope"></span> Cart <span class="badge badge-secondary"><%=rd.searchCart(email).size() %></span></a></li>
      <li><a href="Logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
	<%
}
%>
      
    </ul>
  </div>
</nav>
  
<div class="container">

<div class="row">
<%
String name=request.getParameter("name");
List<Idol> al=rd.searchIdol(name);
for(Idol i:al)
{
	%>
	
  	<div class="col-sm-4">
  <div class="card" style="width:400px">
    <img class="card-img-top" src="<%=i.getImg() %>" alt="Card image" style="width:250px;height:250px">
    <div class="card-body">
      <h4 class="card-title"><%=i.getName() %></h4>
      <h4 class="card-title">PRICE : <%=i.getPrice() %></h4>
      <h4 class="card-title">MATERIAL : <%=i.getMaterial() %></h4>
      <p class="card-text"><%=i.getDis() %></p>
      <%
if(email==null||email.equals(""))
{
	%>
	 <a href="Login.jsp" class="btn btn-primary">Buy Now</a>
            <a href="Login.jsp" class="btn btn-primary">Add To Cart</a>
	<%
}
else
{
	 %>
	  <a href="buy.jsp" class="btn btn-primary">Buy Now</a>
      <a href="addcart.jsp" class="btn btn-primary">Add To Cart</a>
	 <%
}
%>
     
    </div>
  </div>
  <br>
  	</div>
  
	<%
}
%>
</div>

</body>
</html>
