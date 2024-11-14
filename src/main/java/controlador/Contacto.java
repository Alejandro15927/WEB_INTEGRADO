
package controlador;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.conexionBD;

@WebServlet(urlPatterns = {"/Contacto"})
public class Contacto extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
    
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String mensaje = request.getParameter("mensaje");
        
        System.out.println(nombre);
        System.out.println(correo);
        System.out.println(mensaje);
        
        Connection conexion = conexionBD.obtenerConexion();

        if (conexion == null) {
            response.sendRedirect("error.jsp?error=ConexiónFallida");
            System.out.println("NOOO");
            return;
        }
        
        PreparedStatement stmt = null;
        try {
            String query = "INSERT INTO mensajes (nombre, email, mensaje) VALUES (?, ?, ?)";
            stmt = conexion.prepareStatement(query);
            stmt.setString(1, nombre);
            stmt.setString(2, correo);
            stmt.setString(3, mensaje);
            int result = stmt.executeUpdate();
            
            if (result > 0) {
                response.sendRedirect("index.jsp");
            } 
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
            System.out.println("Hola");
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conexion != null) conexion.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar recursos: " + e);
            }
        }
    
    }
}