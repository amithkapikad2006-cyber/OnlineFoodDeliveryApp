<%@ page import="java.util.List" %>
<%@ page import="com.onlinefood.model.FoodItem" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Restaurant Menu</title>

<style>

body{
    font-family:Arial;
    background:#f5f5f5;
}

.container{
    display:flex;
    flex-wrap:wrap;
    justify-content:center;
}

.card{

    width:260px;
    margin:20px;
    background:white;
    border-radius:10px;
    box-shadow:0 0 10px gray;
    overflow:hidden;

}

.card img{

    width:100%;
    height:180px;
    object-fit:cover;

}

.content{

    padding:15px;

}

.button{

    display:block;
    text-align:center;
    background:orange;
    color:white;
    text-decoration:none;
    padding:10px;
    border-radius:5px;

}

</style>

</head>

<body>

<h1 align="center">Restaurant Menu</h1>

<div class="container">

<%
List<FoodItem> foodList =
(List<FoodItem>)request.getAttribute("foodList");

if(foodList!=null){

for(FoodItem food:foodList){
%>

<div class="card">

<img src="images/foods/<%= food.getImage() %>">

<div class="content">

<h3><%=food.getFoodName()%></h3>

<p><b>Price :</b> Rs. <%=String.format("%.2f",food.getPrice())%></p>

<p><%=food.getDescription()%></p>

<form action="cart" method="get">

    <input type="hidden" name="foodId" value="<%= food.getFoodId() %>">

    <label><b>Quantity :</b></label>

    <select name="quantity">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select>

    <br><br>

    <button type="submit" class="button">
        Add To Cart
    </button>

</form>
</div>

</div>

<%
}
}
%>

</div>

</body>
</html>