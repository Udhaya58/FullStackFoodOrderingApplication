# Project Explaination
https://drive.google.com/file/d/1OLp34x2BUK4oWF3Tu1F68XLo5CHrJork/view?usp=sharing


# 🍽️ Online Food Ordering System – Full Stack Application

# Name:Udhayamoorthy G
# Email:udhayamoorthy2058@gmail.com



A scalable, secure, and role-based **Online Food Ordering System** developed using **Spring Boot** for the backend and **Angular** for the frontend. This project allows users to browse menus, manage their cart, place orders, and track deliveries. Restaurants can manage menus and handle orders. Admins oversee the platform.

---

## 📌 Features

### 👤 User Features
- Register/Login (JWT Authentication)
- Browse menu by categories
- View detailed menu info (price, ingredients, images)
- Filter/search menu items
- Add/remove items to/from cart
- Place orders with shipping & payment info
- View order history & order summary

### 🍴 Restaurant Features
- Register/Login
- Add/Edit/Delete menu items
- Manage food categories (Starters, Desserts, Beverages, etc.)
- Mark items as out of stock
- View and update order status (Accepted → Preparing → Delivered)

### 🛡️ Admin Features
- Manage all users and restaurants
- View all orders
- Remove or block users/restaurants if necessary

---

## 🛠️ Tech Stack

### 🔹 Backend – Spring Boot
- RESTful APIs using Spring Boot
- Spring Security with JWT Authentication
- MySQL + JPA/Hibernate
- Layered architecture (Controller, Service, Repository)
- Exception Handling
- Email service for order confirmations

### 🔸 Frontend – Angular
- Angular 16+
- Reactive Forms and Validations
- Angular Routing & Guards
- Role-based Dashboard Navigation
- Bootstrap for styling
- Responsive UI for mobile and desktop

---

## 📁 Project Structure

backend/
├── controller/
├── service/
├── model/
├── repository/
├── security/
└── application.properties

frontend/
├── src/app/
│ ├── components/
│ ├── services/
│ ├── models/
│ ├── guards/
│ └── app-routing.module.ts
└── angular.json

yaml
Copy
Edit

---

## 🚀 Getting Started

### 🔹 Backend (Spring Boot)
```bash
cd backend
./mvnw spring-boot:run
Runs at: http://localhost:9988

🔸 Frontend (Angular)
bash
Copy
Edit
cd frontend
npm install
ng serve
Runs at: http://localhost:4200

🗄️ Database Setup (MySQL)
Create a database:

sql
Copy
Edit
CREATE DATABASE demo;//as in my project you can name it as any and update in the application.properties in backend

Update application.properties in the backend:

properties
Copy
Edit
spring.datasource.url=jdbc:mysql://localhost:3306/food_ordering_system
spring.datasource.username=root
spring.datasource.password=yourpassword
Start backend to auto-create tables via JPA

🔐 User Roles
ROLE_USER → Access to user dashboard, cart, orders

ROLE_RESTAURANT → Access to menu and order management

ROLE_ADMIN → Access to all system data

📸 Screenshots (optional)
Add screenshots of your user dashboard, restaurant panel, admin panel, cart, etc.

📧 Contact
Udhaya Moorthy
📩 Email:udhayamoorthy2058@gmail.com
