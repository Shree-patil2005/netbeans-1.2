<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Order a Book - Online Bookstore</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://farm1.staticflickr.com/130/376152628_249e3630c0_o_d.jpg') no-repeat center center fixed;
            background-size: cover;
            text-align: center;
            padding: 20px;
            color: white;
        }

        .container {
            width: 400px;
            margin: auto;
            background: rgba(0, 0, 0, 0.7);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(255, 215, 0, 0.5);
        }

        h2 {
            color: gold;
        }

        label {
            display: block;
            font-weight: bold;
            margin-top: 10px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            border-radius: 5px;
            border: none;
            font-size: 14px;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>📚 Order a Book</h2>
        <form action="OrderBookServlet" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="contact">Contact Number:</label>
            <input type="text" id="contact" name="contact" required>

            <label for="book">Book Name:</label>
            <input type="text" id="book" name="book" required>

            <label for="address">Delivery Address:</label>
            <input type="text" id="address" name="address" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <button type="submit">Order Now</button>
        </form>
      </div>
    
</body>
</html>
