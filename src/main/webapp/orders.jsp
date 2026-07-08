<%@ page import="java.util.List"%>
<%@ page import="com.onlinefood.model.Order"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Orders</title>

<style>

body{
    font-family:Arial;
    background:#f5f5f5;
}

table{

    width:90%;
    margin:auto;
    border-collapse:collapse;
    background:white;

}

th{

    background:#ff6b00;
    color:white;
    padding:15px;

}

td{

    padding:12px;
    text-align:center;
    border-bottom:1px solid #ddd;

}

h1{

    text-align:center;
    margin:30px;

}

</style>

</head>
<body>

<h1>My Orders</h1>

<table>

<tr>

<th>Order ID</th>
<th>Total Amount</th>
<th>Order Date</th>
<th>Status</th>

</tr>

<%

List<Order> orders=(List<Order>)request.getAttribute("orders");

for(Order order:orders){

%>

<tr>

<td><%=order.getOrderId()%></td>

<td>Rs. <%=order.getTotalAmount()%></td>

<td><%=order.getOrderDate()%></td>

<td><%=order.getStatus()%></td>

</tr>

<%

}

%>
<div style="padding:20px;">
<div style="padding:20px;">

 <a href="home" class="btn"
       style="
       background:#ff6b00;
       color:white;
       padding:12px 25px;
       text-decoration:none;
       border-radius:8px;
       font-size:18px;
       font-weight:bold;
       margin-right:15px;">
         Home
    </a>
    
<a href="logout" class="btn2"
       style="
       background:#ff6b00;
       color:white;
       padding:12px 25px;
       text-decoration:none;
       border-radius:8px;
       font-size:18px;
       font-weight:bold;
       margin-right:15px;">Logout</a>

</div>


</div>

</table>

</body>
</html>