
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

@WebServlet(urlPatterns = {"/Registrar"})

public class Registrar extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        
        String nom_usuario = request.getParameter("nom_usuario");
        String ape_usuario = request.getParameter("ape_usuario");
        String dni = request.getParameter("dni");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String password = request.getParameter("password");

        // Validaciones
        if (nom_usuario == null || nom_usuario.trim().isEmpty()) {
            request.setAttribute("errorNom", "El nombre no puede estar vacío");
            request.getRequestDispatcher("registro-login.jsp").forward(request, response);
            return;
        }

        if (ape_usuario == null || ape_usuario.trim().isEmpty()) {
            request.setAttribute("errorApe", "El apellido no puede estar vacío");
            request.getRequestDispatcher("registro-login.jsp").forward(request, response);
            return;
        }

        if (dni == null || dni.trim().isEmpty() || dni.length() != 8 || !dni.matches("\\d+")) {
            request.setAttribute("errorDni", "El DNI debe tener 8 dígitos numéricos");
            request.getRequestDispatcher("registro-login.jsp").forward(request, response);
            return;
        }

        if (telefono == null || telefono.trim().isEmpty() || telefono.length() != 9 || !telefono.matches("\\d+")) {
            request.setAttribute("errorTelefono", "El teléfono debe tener 9 dígitos numéricos");
            request.getRequestDispatcher("registro-login.jsp").forward(request, response);
            return;
        }

        String regexCorreo = "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$";
        if (correo == null || correo.trim().isEmpty() || !correo.matches(regexCorreo)) {
            request.setAttribute("errorCorreo", "El correo no es válido");
            request.getRequestDispatcher("registro-login.jsp").forward(request, response);
            return;
        }

        if (password == null || password.trim().isEmpty() || password.length() < 6) {
            request.setAttribute("errorPass", "La contraseña debe tener al menos 6 caracteres");
            request.getRequestDispatcher("registro-login.jsp").forward(request, response);
            return;
        }

        Connection conexion = conexionBD.obtenerConexion();

        if (conexion == null) {
            response.sendRedirect("error.jsp?error=ConexiónFallida");
            return;
        }

        PreparedStatement stmt = null;

        try {
            String query = "INSERT INTO users (nombres, apellidos, dni, telefono, correo, password) VALUES (?, ?, ?, ?, ?, ?)";
            stmt = conexion.prepareStatement(query);
            stmt.setString(1, nom_usuario);
            stmt.setString(2, ape_usuario);
            stmt.setString(3, dni);
            stmt.setString(4, telefono);
            stmt.setString(5, correo);
            stmt.setString(6, password);

            int result = stmt.executeUpdate();
            
            if (result > 0) {
                response.sendRedirect("login.jsp");
            } else {
                response.sendRedirect("registrar.jsp?error=true");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
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