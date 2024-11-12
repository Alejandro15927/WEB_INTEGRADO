package Tests;

import controlador.Registrar;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.conexionBD;
import org.junit.Before;
import org.junit.Test;
import static org.mockito.Mockito.*;


public class RegistrarTest {

    private Registrar registrarServlet;
    private HttpServletRequest request;
    private HttpServletResponse response;

    @Before
    public void setUp() {
        registrarServlet = new Registrar();
        request = mock(HttpServletRequest.class);
        response = mock(HttpServletResponse.class);
    }

    @Test
    public void testRegistroExitoso() throws Exception {
        when(request.getParameter("nom_usuario")).thenReturn("Juan");
        when(request.getParameter("ape_usuario")).thenReturn("Pérez");
        when(request.getParameter("dni")).thenReturn("12345678");
        when(request.getParameter("telefono")).thenReturn("123456789");
        when(request.getParameter("correo")).thenReturn("juan.perez@example.com");
        when(request.getParameter("password")).thenReturn("Password1");
        
        Connection mockConnection = mock(Connection.class);
        PreparedStatement mockStmt = mock(PreparedStatement.class);
        when(mockStmt.executeUpdate()).thenReturn(1);
        when(mockConnection.prepareStatement(anyString())).thenReturn(mockStmt);
        conexionBD.setConnection(mockConnection);
        
        registrarServlet.doPost(request, response);
        verify(response).sendRedirect("login.jsp");
    }

    @Test
    public void testRegistroConCorreoDuplicado() throws Exception {
        when(request.getParameter("correo")).thenReturn("juan.perez@example.com");
        when(request.getParameter("password")).thenReturn("Password1");
        
        Connection mockConnection = mock(Connection.class);
        PreparedStatement mockStmt = mock(PreparedStatement.class);
        when(mockStmt.executeUpdate()).thenReturn(0);
        when(mockConnection.prepareStatement(anyString())).thenReturn(mockStmt);
        conexionBD.setConnection(mockConnection);
        
        registrarServlet.doPost(request, response);
        verify(response).sendRedirect("registrar.jsp?error=true");
    }

    @Test
    public void testRegistroErrorDeConexion() throws Exception {
        when(request.getParameter("correo")).thenReturn("juan.perez@example.com");
        when(request.getParameter("password")).thenReturn("Password1");
        conexionBD.setConnection(null);
        
        registrarServlet.doPost(request, response);
        verify(response).sendRedirect("error.jsp?error=ConexiónFallida");
    }

    @Test
    public void testValidacionCamposIncorrectos() throws Exception {
        when(request.getParameter("nom_usuario")).thenReturn("");
        when(request.getParameter("ape_usuario")).thenReturn("");
        when(request.getParameter("dni")).thenReturn("1234567");
        when(request.getParameter("telefono")).thenReturn("12345678");
        when(request.getParameter("correo")).thenReturn("juan@com");
        when(request.getParameter("password")).thenReturn("12345");
        
        registrarServlet.doPost(request, response);
        verify(response, never()).sendRedirect("login.jsp");
        verify(request).getRequestDispatcher("registro-login.jsp");
    }
}
