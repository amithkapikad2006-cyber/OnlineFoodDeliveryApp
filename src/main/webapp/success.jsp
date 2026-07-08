<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Success</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial,sans-serif;
}

body{
    background:#f5f5f5;
}

.header{

    background:linear-gradient(90deg,#ff6600,#ff9800);
    color:white;
    padding:20px 50px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    box-shadow:0 3px 10px rgba(0,0,0,.2);

}

.logo{

    font-size:40px;
    font-weight:bold;

}

.logout{

    text-decoration:none;
    color:white;
    background:#e53935;
    padding:12px 25px;
    border-radius:8px;
    font-size:18px;
    transition:.3s;

}

.logout:hover{

    background:#c62828;

}

.container{

    width:650px;
    margin:70px auto;
    background:white;
    border-radius:15px;
    padding:40px;
    text-align:center;
    box-shadow:0 5px 15px rgba(0,0,0,.2);

}

.tick{

    font-size:90px;

}

h1{

    color:#2e7d32;
    margin:20px 0;

}

p{

    font-size:20px;
    color:#555;
    line-height:30px;

}

.buttons{

    margin-top:40px;

}

.btn{

    text-decoration:none;
    color:white;
    padding:15px 30px;
    border-radius:8px;
    margin:10px;
    font-size:18px;
    display:inline-block;

}

.home{

    background:#ff9800;

}

.home:hover{

    background:#fb8c00;

}

.order{

    background:#4caf50;

}

.order:hover{

    background:#388e3c;

}

.footer{

    text-align:center;
    margin-top:60px;
    color:gray;
    font-size:15px;

}

</style>

</head>

<body>

<div class="header">

<div class="logo">
🍔 Online Food Delivery
</div>

<a href="logout" class="logout">
Logout
</a>

</div>

<div class="container">

<div class="tick">
✅
</div>

<h1>Order Placed Successfully!</h1>

<p>

Thank you for ordering with us.<br>

Your delicious food is being prepared by the restaurant.

</p>

<div class="buttons">

<a href="home" class="btn home">
🍕 Continue Shopping
</a>

<a href="orders" class="btn order">
📦 View Orders
</a>

</div>

</div>

<div class="footer">

Made with ❤️ using Java, JSP, Servlets & MySQL

</div>

</body>
</html>