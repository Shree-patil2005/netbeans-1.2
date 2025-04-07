<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Dashboard - Online Bookstore</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://img.freepik.com/premium-photo/book-library-with-old-open-textbook-stack-piles-literature-text-archive-reading-desk_779468-5822.jpg?w=2000') no-repeat center center fixed;
            background-size: cover;
            color: white;
            text-align: center;
            padding: 20px;
        }

        h1 {
            color: gold;
            
        }

        .container {
            background: rgba(0, 0, 0, 0.7);
            padding: 20px;
            border-radius: 10px;
            width: 50%;
            margin: auto;
            
        }

        .info-box {
            font-size: 22px;
            font-weight: bold;
            color: gold;
            margin-top: 20px;
        }

        .btn {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            background: Orange;
            color: white;
            text-decoration: none;
            font-size: 18px;
            border-radius: 5px;
        }

        .btn:hover {
            background: darkorange;
        }
    </style>
</head>
<body>

    <h1>📚 Welcome to Your Dashboard 📚</h1>

    <div class="container">
        <h2>Your Order Summary</h2>
        
        <div class="info-box">
            <%
                int totalOrders = 0;
                try {
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "scott", "shree123");
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT get_order_count FROM dual");
                    
                    if (rs.next()) {
                        totalOrders = rs.getInt(1);
                    }
                    
                    rs.close();
                    stmt.close();
                    conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            🛒 Total Orders Placed: <%= totalOrders %>
        </div>

        <a href="bookinfo.jsp" class="btn">book information</a>
        <a href="orderhistory.jsp" class="btn">see the order history</a>
        <a href="signup.jsp" class="btn">Home Page</a>
    </div>

</body>
</html>
