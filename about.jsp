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
      <a class="navbar-brand" href="#">StatueStudio</a>
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
          <li><a href="#">Mukut</a></li>
          <li><a href="#">Diya_lambs</a></li>
          <li><a href="#">Sringhar_for_go</a></li>
          <li><a href="#">Necklace</a></li>
          <li><a href="#">Hastham_Patham</a></li>
          <li><a href="#">Toran</a></li>
          <li><a href="#">Jewellery</a></li>
          <li><a href="#">Thali</a></li>
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
<h1 align="center">About Us</h1>


<h3>
Who we are</h3>
<h4>
First of a kind online studio that has the largest variety of metal/brass statues, which have been uniquely designed by the artists 
and have been given innovative finishing with colors and gem stones to exceed your expectations for spiritual and decorative purposes.
Each statue is being provided with everlasting shine which literally requires - No Care.
We sells large variety of statues in the form of Hindu Gods, including but not limited to - The Nataraja (Dancing Shiva), 
The Ganesha (The Elephant head God), The Shiva (The Destroyer of all evils), The Krishna, (The preacher of Geeta), 
The Vishnu (The creator of the universe), Maa Durga (The Goddess on Tiger), Maa Saraswati (The Goddess of all arts, knowledge and wisdom), 
Maa Lakshmi (The Goddess of wealth and money), The Buddha (The Enlightened one), Goddess Tara, The Laughing Buddha (Budai), and many more.
</h4>

<h3>About the raw material</h3>
<h4>
Brass. Category: Metal. Brass statues are popular than any other metal because of its everlasting shine, no maintenance, great resale value, and affordability.
</h4>

<h3>Our Journey</h3>
<h4>
   When we got into this wonderful business of selling these magnificient pieces of art. Though they say it appears to be just yesterday when 
they started out on this path, why, because its been such a fulfilling ride all throughout,being surrounded by the absolutely beautiful sculptures and statues, 
getting to know and learn about different cultures and religions through them,meeting and interacting such extraordinary talented artists who make them, 
and there is nothing more satisfactory than seeing someone choosing statue of his/her choice or rather should we say statue choosing him/her.
To continue doing it with the same passion and zeal we have been thinking how can we expand the reach of this lovely art to everyone worldwide. 
And we then came across this idea of selling it online through e-commerce, thereby taking this art and knowledge around them to every nook and corner of the world. 
Thats how and why, our website was born.
</h4>
</div>

</body>
</html>
