package Tests;

import static org.junit.Assert.*;
import org.junit.Test;

public class ValidacionesRegistroTest {
    
    @Test
    public void testNombreValido() {
        assertTrue(ValidacionesRegistro.esNombreValido("Juan"));
        assertFalse(ValidacionesRegistro.esNombreValido("J"));
        assertFalse(ValidacionesRegistro.esNombreValido("Juan123"));
        assertFalse(ValidacionesRegistro.esNombreValido("Juan@"));
    }

    @Test
    public void testApellidoValido() {
        assertTrue(ValidacionesRegistro.esApellidoValido("Pérez"));
        assertFalse(ValidacionesRegistro.esApellidoValido("P"));
        assertFalse(ValidacionesRegistro.esApellidoValido("Pérez123"));
        assertFalse(ValidacionesRegistro.esApellidoValido("Pérez@"));
    }
    
    @Test
    public void testDniValido() {
        assertTrue(ValidacionesRegistro.esDniValido("12345678"));
        assertFalse(ValidacionesRegistro.esDniValido("1234567"));
        assertFalse(ValidacionesRegistro.esDniValido("abcdefgh"));
    }
    
    @Test
    public void testTelefonoValido() {
        assertTrue(ValidacionesRegistro.esTelefonoValido("123456789"));
        assertFalse(ValidacionesRegistro.esTelefonoValido("12345678"));
        assertFalse(ValidacionesRegistro.esTelefonoValido("1234567890"));
        assertFalse(ValidacionesRegistro.esTelefonoValido("abcdefgh"));
    }
    
    @Test
    public void testCorreoValido() {
        assertTrue(ValidacionesRegistro.esCorreoValido("test@example.com"));
        assertFalse(ValidacionesRegistro.esCorreoValido("testexample.com"));
        assertFalse(ValidacionesRegistro.esCorreoValido("test@com"));
    }
    
    @Test
    public void testContraseñaValida() {
        assertTrue(ValidacionesRegistro.esContraseñaValida("Password1"));
        assertFalse(ValidacionesRegistro.esContraseñaValida("12345"));
        assertFalse(ValidacionesRegistro.esContraseñaValida("password"));
        assertFalse(ValidacionesRegistro.esContraseñaValida("123456"));
    }
    
    @Test
    public void testCampoVacio() {
        assertFalse(ValidacionesRegistro.esNombreValido(""));
        assertFalse(ValidacionesRegistro.esCorreoValido(null));
    }
    
}