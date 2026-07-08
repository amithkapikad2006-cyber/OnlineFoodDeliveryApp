<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Food Delivery</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial;
}

body{
background:#f8f8f8;
}

nav{

background:#ff6b00;
padding:20px 80px;
display:flex;
justify-content:space-between;
align-items:center;
color:white;

}

.logo{

font-size:35px;
font-weight:bold;

}

.menu a{

color:white;
text-decoration:none;
margin-left:30px;
font-size:18px;

}

.menu a:hover{

color:yellow;

}

.hero{

display:flex;
justify-content:space-between;
align-items:center;
padding:70px;

}

.left{

width:50%;

}

.left h1{

font-size:55px;
margin-bottom:20px;

}

.left span{

color:#ff6b00;

}

.left p{

font-size:20px;
color:gray;
margin-bottom:40px;
line-height:30px;

}

.btn{

padding:15px 35px;
text-decoration:none;
background:#ff6b00;
color:white;
border-radius:30px;
margin-right:15px;
font-size:18px;
transition:.3s;

}

.btn:hover{

background:black;

}

.right img{

width:600px;

}

.features{

display:flex;
justify-content:center;
gap:30px;
padding:60px;

}

.box{

background:white;
width:250px;
padding:25px;
border-radius:15px;
box-shadow:0 0 15px lightgray;
text-align:center;

}

.box img{

width:70px;

}

.box h3{

margin:15px 0;

}

.box p{

color:gray;

}

footer{

background:#222;
color:white;
text-align:center;
padding:25px;
margin-top:50px;

}

</style>

</head>

<body>

<nav>

<div class="logo">
Food Deliver App
</div>

<div class="menu">

<a href="login.jsp">Login</a>

<a href="register.jsp">Register</a>

</div>

</nav>

<div class="hero">

<div class="left">

<h1>
Order <span>Delicious Food</span><br>
At Your Doorstep
</h1>

<p>

Choose from hundreds of restaurants and enjoy fast delivery.

</p>

<a href="login.jsp" class="btn">
Login
</a>

<a href="register.jsp" class="btn">
Register
</a>


</body>
</html>