<!DOCTYPE html>
<html>
<head>

<title>User Login</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial;
}

body{

height:100vh;
display:flex;
justify-content:center;
align-items:center;


}

.login-box{

width:400px;

background:white;

padding:40px;

border-radius:15px;

box-shadow:0 10px 30px rgba(0,0,0,.3);

}

.login-box h1{

text-align:center;

margin-bottom:30px;

color:#ff5722;

}

input{

width:100%;

padding:12px;

margin-top:10px;

margin-bottom:20px;

border:1px solid #ddd;

border-radius:8px;

font-size:16px;

}

button{

width:100%;

padding:14px;

background:#ff5722;

color:white;

font-size:18px;

border:none;

border-radius:8px;

cursor:pointer;

}

button:hover{



}

.register{

text-align:center;

margin-top:20px;

}

.register a{



text-decoration:none;

font-weight:bold;

}

.icon{

text-align:center;

font-size:60px;

margin-bottom:20px;

}

</style>

</head>

<body>

<div class="login-box">

<div class="icon">



</div>

<h1>User Login</h1>

<form action="login" method="post">

<input
type="email"
name="email"
placeholder="Enter Email"
required>

<input
type="password"
name="password"
placeholder="Enter Password"
required>

<button type="submit">

Login

</button>

</form>

<div class="register">

Don't have an account?

<a href="register.jsp">

Register

</a>

</div>

</div>

</body>

</html>