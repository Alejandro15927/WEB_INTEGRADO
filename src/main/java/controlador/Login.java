
package controlador;

import modelo.conexionBD;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/Login"})

public class Login extends HttpServlet {
   protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        String correo = request.getParameter("correo");
        String password = request.getParameter("password");

        Connection conexion = conexionBD.obtenerConexion();

        if (conexion == null) {
            response.sendRedirect("error.jsp?error=ConexiónFallida");
            return;
        }

        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            String query = "SELECT * FROM users WHERE correo = ? AND passwords = ?";
            stmt = conexion.prepareStatement(query);
            stmt.setString(1, correo);
            stmt.setString(2, password);
            rs = stmt.executeQuery();

            if (rs.next()) {
                response.sendRedirect("index.jsp");
            } else {
                response.sendRedirect("login.jsp?error=true");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conexion != null) conexion.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar recursos: " + e);
            }
        }
    }
}