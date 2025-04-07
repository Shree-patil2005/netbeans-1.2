<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login - Online Bookstore</title>
    <style>
        
        body {
            font-family: Arial, sans-serif;
            background: url('https://img.freepik.com/premium-photo/book-library-with-old-open-textbook-stack-piles-literature-text-archive-reading-desk_779468-5822.jpg?w=2000') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        
        .container {
            background: rgba(0, 0, 0, 0.8);
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            color: white;
            width: 300px;
            
        }

        h2 {
            color: gold;
            margin-bottom: 20px;
        }

        input {
            width: 90%;
            padding: 10px;
            margin: 10px;
            border-radius: 5px;
            border: none;
            font-size: 16px;
        }

        
        input[type="submit"] {
            background-color: gold;
            color: black;
            font-size: 16px;
            cursor: pointer;
            font-weight: bold;
        }

        input[type="submit"]:hover {
            background-color: darkgoldenrod;
        }

        .error-message {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Admin Login</h2>

        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            boolean loginFailed = false;

            if (username != null && password != null) {
                if (username.equals("Ram") && password.equals("5332")) {
                    session.setAttribute("adminUser", username);
                    response.sendRedirect("userdashboard.jsp"); 
                } else {
                    loginFailed = true;
                }
            }
        %>

        <form method="post">
            <input type="text" name="username" placeholder="Username" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <input type="submit" value="Login">
        </form>

        <% if (loginFailed) { %>
            <p class="error-message">Login Denied! Incorrect username or password.</p>
        <% } %>
    </div>

</body>
</html>
