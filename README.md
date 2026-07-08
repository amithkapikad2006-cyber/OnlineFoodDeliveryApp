# 🍔 Online Food Delivery Application

A Java Web Application developed using JSP, Servlets, JDBC, MySQL, Maven, and Apache Tomcat. This project allows users to browse restaurants, view food items, add items to a cart, place orders, and view order history.

---

## 📌 Features

- User Registration
- User Login
- View Restaurants
- Browse Restaurant Menus
- Add Food Items to Cart
- Update Cart Quantity
- Checkout and Place Orders
- Order Confirmation
- View Order History
- Logout

---

## 🛠️ Technologies Used

- Java
- JSP
- Servlets
- JDBC
- MySQL
- HTML
- CSS
- Maven
- Apache Tomcat 10.1
- Eclipse IDE

---

## 📂 Project Structure

```
OnlineFoodDeliveryApp
│
├── src/main/java
│   ├── controller
│   ├── dao
│   ├── dao.impl
│   ├── DBUtil
│   └── model
│
├── src/main/webapp
│   ├── css
│   ├── images
│   ├── register.jsp
│   ├── login.jsp
│   ├── home.jsp
│   ├── menu.jsp
│   ├── cart.jsp
│   ├── checkout.jsp
│   └── viewOrders.jsp
│
├── pom.xml
└── README.md
```

---

## 🗄️ Database

Database: **online_food_delivery**

Tables:

- users
- restaurants
- categories
- food_items
- orders
- order_items

---

## 🚀 How to Run the Project

### 1. Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/OnlineFoodDeliveryApp.git
```

### 2. Open in Eclipse

- Import as Existing Maven Project.

### 3. Configure Apache Tomcat 10.1

- Add the project to the Tomcat server.

### 4. Create the MySQL Database

Create the database and execute the SQL script to create all required tables.

### 5. Update Database Credentials

Modify your database connection settings in the DBUtil class.

Example:

```java
String url = "jdbc:mysql://localhost:3306/online_food_delivery";
String username = "root";
String password = "your_password";
```

### 6. Run the Application

Start Tomcat and open:

```
http://localhost:8080/OnlineFoodDeliveryApp/
```

---

## 📸 Application Modules

- Registration
- Login
- Home Page
- Restaurant Listing
- Food Menu
- Cart
- Checkout
- Order Confirmation
- View Orders

---

## 👨‍💻 Author

**Amithesh**

B.Tech - Electronics and Communication Engineering

Srinivas University Institute of Engineering and Technology

---

## 📄 License

This project is created for learning and academic purposes.
