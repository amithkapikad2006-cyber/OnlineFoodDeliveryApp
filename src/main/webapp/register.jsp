<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
</head>
<body>

<h2>User Registration</h2>

<form action="register" method="post">

    <label>Name</label><br>
    <input type="text" name="name" required><br><br>

    <label>Email</label><br>
    <input type="email" name="email" required><br><br>

    <label>Password</label><br>
    <input type="password" name="password" required><br><br>

    <label>Phone</label><br>
    <input type="text" name="phone"><br><br>

    <label>Address</label><br>
    <textarea name="address"></textarea><br><br>

    <label>Role</label><br>
    <select name="role">
        <option value="CUSTOMER">Customer</option>
        <option value="ADMIN">Admin</option>
    </select>

    <br><br>

    <input type="submit" value="Register">

</form>

</body>
</html>