<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="com.onlinefood.model.Cart"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Cart</title>
</head>
<body>

<h2>My Cart</h2>

<%
List<Cart> cartList = (List<Cart>) session.getAttribute("cart");

double grandTotal = 0;

if(cartList != null && !cartList.isEmpty()){

    for(Cart cart : cartList){

        grandTotal += cart.getTotalPrice();
%>

<div style="border:1px solid black;padding:15px;margin:15px;">

<h3><%= cart.getFoodItem().getFoodName() %></h3>

<p>Price : Rs. <%= cart.getFoodItem().getPrice() %></p>

<p>Quantity : <%= cart.getQuantity() %></p>

<p>Total : Rs. <%= cart.getTotalPrice() %></p>

</div>

<%
    }
%>

<h2>Grand Total : Rs. <%= grandTotal %></h2>

<br>
<center>

<a href="home"
style="padding:12px 20px;
background:orange;
color:white;
text-decoration:none;
border-radius:6px;
margin-right:20px;">

Continue Shopping

</a>

<a href="checkout"
style="padding:12px 20px;
background:green;
color:white;
text-decoration:none;
border-radius:6px;">

Proceed To Checkout

</a>

</center>
<%
}else{
%>

<h3>Your Cart is Empty</h3>

<%
}
%>

</body>
</html>