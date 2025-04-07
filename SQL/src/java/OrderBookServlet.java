import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/OrderBookServlet")
public class OrderBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String name = request.getParameter("name");
        String contact = request.getParameter("contact");
        String book = request.getParameter("book");
        String address = request.getParameter("address");
        String email = request.getParameter("email");

        try {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            
            
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/orcl", "your sqlplus username", "your sqlplus password");//for example:- "john","john123"

           
            String sql = "INSERT INTO bookorder (order_id, name, contact, book, address, email) VALUES (bookorder_seq.NEXTVAL, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, contact);
            pstmt.setString(3, book);
            pstmt.setString(4, address);
            pstmt.setString(5, email);

            int rowsInserted = pstmt.executeUpdate();
            pstmt.close();
            conn.close();

            if (rowsInserted > 0) {
                response.sendRedirect("success.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
