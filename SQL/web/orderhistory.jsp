<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Order History - Online Bookstore</title>
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
            width: 60%;
            margin: auto;
            
        }

        .order-box {
            font-size: 18px;
            color: lightgoldenrodyellow;
            margin-top: 15px;
            padding: 10px;
            border-bottom: 1px solid gold;
        }

        .btn {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            background: orange;
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

    <h1>No. of people who have placed the orders before</h1>

    <div class="container">
        <h2>Past Orders</h2>

        <%
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "scott", "shree123");
                CallableStatement cstmt = conn.prepareCall("{CALL fetch_orders_cursor(?)}");

                
                cstmt.registerOutParameter(1, oracle.jdbc.OracleTypes.CURSOR);
                cstmt.execute();

                ResultSet rs = (ResultSet) cstmt.getObject(1);

                while (rs.next()) {
        %>
                    <div class="order-box">
                        <strong>Order ID:</strong> <%= rs.getInt("order_id") %><br>
                        <strong>Book Name:</strong> <%= rs.getString("book") %><br>
                        <strong>Ordered By:</strong> <%= rs.getString("name") %><br>
                        <strong>Contact:</strong> <%= rs.getString("contact") %><br>
                        <strong>Address:</strong> <%= rs.getString("address") %><br>
                        <strong>Email:</strong> <%= rs.getString("email") %>
                    </div>
        <%
                }

                rs.close();
                cstmt.close();
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>

        <a href="userdashboard.jsp" class="btn">UserDashboard</a>
    </div>

</body>
</html>
