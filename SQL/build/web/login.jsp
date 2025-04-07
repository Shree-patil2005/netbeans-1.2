<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login - Online Bookstore</title>
    <style>
        
        body {
            font-family: Arial, sans-serif;
            background: url('https://img.freepik.com/premium-photo/book-library-with-old-open-textbook-stack-piles-literature-text-archive-reading-desk_779468-5822.jpg?w=2000') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        
        h2 {
            color: white;
        }

        
        .welcome-text {
            font-size: 50px;
            font-weight: bold;
            color: white;
            margin-bottom: 85px;
        }

        
        .container {
            background: url('https://farm1.staticflickr.com/130/376152628_249e3630c0_o_d.jpg') no-repeat center center;
            background-size: cover;
            padding: 20px;
            border-radius: 10px;
            width: 350px;
            text-align: center;
            margin-bottom: 85px;
        }

        
        input {
            width: 90%;
            padding: 10px;
            margin: 10px;
            border-radius: 5px;
        }

        
        input[type="submit"] {
            background-color: darkgreen;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: green;
        }

        
        p {
            margin-top: 10px;
            color: gold;
        }

        a {
            color: blue;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    
    <div class="welcome-text">Welcome to Shree Online Bookstore System</div>

    <div class="container">
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
            <input type="email" name="email" placeholder="Email" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
