
package controlador;

import Tests.ValidacionesRegistro;
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
    public void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        
        String nom_usuario = request.getParameter("nom_usuario");
        String ape_usuario = request.getParameter("ape_usuario");
        String dni = request.getParameter("dni");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String password = request.getParameter("password");
        
        if (!ValidacionesRegistro.esNombreValido(nom_usuario)) {
            request.setAttribute("errorNom", "El nombre debe tener al menos 2 caracteres y no debe contener números o caracteres especiales.");
            request.getRequestDispatcher("registro-login.jsp").forward(request, response);
            return;
        }

        if (!ValidacionesRegistro.esApellidoValido(ape_usuario)) {
            request.setAttribute("errorApe", "El apellido debe tener al menos 2 caracteres y no debe contener números o caracteres especiales.");
            request.getRequestDispatcher("registro-login.jsp").forward(request, response);
            return;
        }

        if (!ValidacionesRegistro.esDniValido(dni)) {
            request.setAttribute("errorDni", "El DNI debe tener 8 dígitos numéricos");
            request.getRequestDispatcher("registro-login.jsp").forward(request, response);
            return;
        }

        if (!ValidacionesRegistro.esTelefonoValido(telefono)) {
            request.setAttribute("errorTelefono", "El teléfono debe tener 9 dígitos numéricos");
            request.getRequestDispatcher("registro-login.jsp").forward(request, response);
            return;
        }

        if (!ValidacionesRegistro.esCorreoValido(correo)) {
            request.setAttribute("errorCorreo", "El correo no es válido");
            request.getRequestDispatcher("registro-login.jsp").forward(request, response);
            return;
        }

        if (!ValidacionesRegistro.esContraseñaValida(password)) {
            request.setAttribute("errorPass", "La contraseña debe tener al menos 6 caracteres, incluyendo al menos una letra y un número.");
            request.getRequestDispatcher("registro-login.jsp").forward(request, response);
            return;
        }

        
        Connection conexion = conexionBD.obtenerConexion();

        if (conexion == null) {
            response.sendRedirect("error.jsp?error=ConexiónFallida");
            System.out.println("NOOO");
            return;
        }
        
        PreparedStatement stmt = null;

        try {
            String query = "INSERT INTO usuarios (nombres, apellidos, dni, telefono, correo, password) VALUES (?, ?, ?, ?, ?, ?)";
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