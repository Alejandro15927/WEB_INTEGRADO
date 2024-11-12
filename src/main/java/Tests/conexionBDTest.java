package Tests;

import static org.mockito.Mockito.*;
import static org.junit.Assert.*;
import org.junit.Test;
import java.sql.Connection;
import modelo.conexionBD;

public class conexionBDTest {

    @Test
    public void testObtenerConexionExitosa() {
        Connection mockConnection = mock(Connection.class);
        conexionBD.setConnection(mockConnection);
        Connection conexion = conexionBD.obtenerConexion();
        assertEquals("Debe devolver la conexión simulada", mockConnection, conexion);
        conexionBD.clearConnection();
    }

    @Test
    public void testObtenerConexionRealCuandoNoHayMock() {
        conexionBD.clearConnection();
        Connection conexion = conexionBD.obtenerConexion();
        assertNotNull("La conexión real no debe ser nula", conexion);
        try {
            conexion.close();
        } catch (Exception e) {
            fail("No se pudo cerrar la conexión real: " + e.getMessage());
        }
    }

    @Test
    public void testConexionFallida() {
        conexionBD.setConnection(null);
        Connection conexion = conexionBD.obtenerConexion();
        assertNull("La conexión debe ser nula si no hay mock", conexion);
    }
}
