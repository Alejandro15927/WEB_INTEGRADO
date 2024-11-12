package Tests;



import controlador.Login;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import static org.mockito.Mockito.*;

import org.junit.Before;
import org.junit.Test;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.conexionBD;

public class LoginTest {

    private Login loginServlet;
    private HttpServletRequest request;
    private HttpServletResponse response;

    @Before
    public void setUp() {
        loginServlet = new Login();
        request = mock(HttpServletRequest.class);
        response = mock(HttpServletResponse.class);
    }

    @Test
    public void testLoginSuccessful() throws Exception {
        when(request.getParameter("correo")).thenReturn("test@example.com");
        when(request.getParameter("password")).thenReturn("password123");
        Connection mockConnection = mock(Connection.class);
        PreparedStatement mockStmt = mock(PreparedStatement.class);
        ResultSet mockResultSet = mock(ResultSet.class);
        when(mockResultSet.next()).thenReturn(true);
        when(mockStmt.executeQuery()).thenReturn(mockResultSet);
        when(mockConnection.prepareStatement(anyString())).thenReturn(mockStmt);
        conexionBD.setConnection(mockConnection);
        loginServlet.doPost(request, response);
        verify(response).sendRedirect("index.jsp");
    }

    @Test
    public void testLoginFailed() throws Exception {
        when(request.getParameter("correo")).thenReturn("wrong@example.com");
        when(request.getParameter("password")).thenReturn("wrongpassword");
        Connection mockConnection = mock(Connection.class);
        PreparedStatement mockStmt = mock(PreparedStatement.class);
        ResultSet mockResultSet = mock(ResultSet.class);
        when(mockResultSet.next()).thenReturn(false);
        when(mockStmt.executeQuery()).thenReturn(mockResultSet);
        when(mockConnection.prepareStatement(anyString())).thenReturn(mockStmt);
        conexionBD.setConnection(mockConnection);
        loginServlet.doPost(request, response);
        verify(response).sendRedirect("login.jsp?error=true");
    }

    @Test
    public void testLoginErrorOnConnection() throws Exception {
        when(request.getParameter("correo")).thenReturn("test@example.com");
        when(request.getParameter("password")).thenReturn("password123");
        conexionBD.setConnection(null);
        loginServlet.doPost(request, response);
        verify(response).sendRedirect("error.jsp?error=ConexiónFallida");
    }
    
}