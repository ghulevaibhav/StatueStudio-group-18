<%@page import="com.Cart"%>
<%@page import="java.util.List"%>
<jsp:useBean id="rd" class="com.Rdao"></jsp:useBean>
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
String email=request.getParameter("email");
List<Cart> al=rd.searchCart(email);
%>
<title>Bill</title>
<div >

<center>
	<div>
	<h1>Your Bill</h1>
			<%
			double total=0;
			for(Cart c:al ) 
			{
				%>
				
			<h2><%=c.getName() %></h2>
			<img alt="" src="<%=c.getImg() %>" height="100px" width="100px">
			<h4>PRICE : <%=c.getPrice() %></h4>
			<h4>MATERIAL : <%=c.getMaterial() %></h4>
			<h4><%=c.getDis() %></h4>
			<br><br><br>
				<%
				total=total+c.getPrice();
			}
			%>
			
	</div>
	</center>
	
<center>
<div id="d1"> 
<h1 align="center">Please Chose Payment Option</h1>
<div>
<h4>
Payment details <br>
1) Click to the pay option for payment procedure <br>
2) Please review your order <br>
3)Your order will proceeded immediately. <br>
4) Adjustment or changes cannot be made once your order is submitted <br>
5)Return will be processed only if:<br>
it is determined that the product was not damaged while in your possession;<br>
the product is not different from what was shipped to you;<br>
the product is returned in original condition (with brand’s/manufacturer's box, MRP tag intact, user manual, warranty card and all the accessories therein).
<br>
<br>
<br>
Note: If you've received a non-returnable product in a damaged/defective condition, you can contact us within 10 days from the delivery of the product.
</h4>
</div>
<a href="https://onboarding.payu.in/app/account?utm_source=google&utm_medium=cpc&campaign=Search-|-DSA&keyword=&gclid=Cj0KCQjwssyJBhDXARIsAK98ITQNHOqp9_xNTe0y9FHiL7vtbhCXtFJEQzI4YVao2B6yjICzdm9gRgEaAje2EALw_wcB"><img alt="no" src="payumoney.jpg" height="100px" width="100px"></a>&nbsp&nbsp&nbsp&nbsp
<a href="https://www.paypal.com/in/signin"><img alt="no" src="paypal.png" height="100px" width="100px"></a>&nbsp&nbsp&nbsp&nbsp
<a href="https://paytm.com/"><img alt="no" src="paytm.jpg" height="100px" width="100px"></a>&nbsp&nbsp&nbsp&nbsp

<button onclick="show()">Cash On Delivery</button>
</div>
</div>
</center>
<div id="d2" style="display: none;">
	<h3 align="center">Toal Amount : <%=total %></h3>
	<center><button onclick="window.print()">Print</button></center>
</div>

<script>
	function show() {
		document.getElementById('d2').style.display='block';
		document.getElementById('d1').style.display='none';
	}
</script>