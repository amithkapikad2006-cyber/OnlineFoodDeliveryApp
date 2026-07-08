<%@ page import="java.util.List"%>
<%@ page import="com.onlinefood.model.Restaurant"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial;
}

body{
background:#f5f5f5;
}

.header{

background:#ff6b00;
color:white;
padding:20px 40px;
display:flex;
justify-content:space-between;
align-items:center;

}

.header a{

color:white;
text-decoration:none;
background:red;
padding:10px 18px;
border-radius:6px;

}

.container{

display:flex;
flex-wrap:wrap;
justify-content:center;
gap:30px;
padding:30px;

}

.card{

width:300px;
background:white;
border-radius:12px;
overflow:hidden;
box-shadow:0 4px 10px rgba(0,0,0,.2);
transition:.3s;

}

.card:hover{

transform:translateY(-8px);

}

.card img{

width:100%;
height:200px;
object-fit:cover;

}

.content{

padding:15px;

}

.content h2{

margin-bottom:10px;

}

.content p{

margin:8px 0;

}

.btn{

display:inline-block;
margin-top:10px;
padding:10px 18px;
background:#ff6b00;
color:white;
text-decoration:none;
border-radius:6px;

}

.btn:hover{

background:#e65c00;

}

</style>

</head>

<body>

<div class="header">

<h1>Online Food Delivery</h1>

<a href="logout">Logout</a>

</div>

<div class="container">

<%

List<Restaurant> restaurants=(List<Restaurant>)request.getAttribute("restaurants");

if(restaurants!=null){

for(Restaurant r:restaurants){

%>

<div class="card">

<img src="images/restaurants/<%=r.getImage()%>">

<div class="content">

<h2><%=r.getRestaurantName()%></h2>

<p><b>Address :</b> <%=r.getAddress()%></p>

<p><b>Phone :</b> <%=r.getPhone()%></p>

<a class="btn"
href="menu?restaurantId=<%=r.getRestaurantId()%>">

View Menu

</a>

</div>

</div>

<%

}

}

%>

</div>

</body>

</html>