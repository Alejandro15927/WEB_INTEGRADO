package Tests;

public class ValidacionesRegistro {
    public static boolean esNombreValido(String nombre) {
        return nombre != null && nombre.trim().length() >= 2 && nombre.matches("[a-zA-ZáéíóúÁÉÍÓÚÑñ ]+");
    }

    public static boolean esApellidoValido(String apellido) {
        return apellido != null && apellido.trim().length() >= 2 && apellido.matches("[a-zA-ZáéíóúÁÉÍÓÚÑñ ]+");
    }

    public static boolean esDniValido(String dni) {
        return dni != null && dni.length() == 8 && dni.matches("\\d+");
    }

    public static boolean esCorreoValido(String correo) {
        String regexCorreo = "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$";
        return correo != null && correo.matches(regexCorreo);
    }
    
    public static boolean esTelefonoValido(String telefono) {
        return telefono != null && telefono.length() == 9 && telefono.matches("\\d+");
    }
    
    public static boolean esContraseñaValida(String contraseña) {
        return contraseña != null && contraseña.trim().length() >= 6 && contraseña.matches(".*[a-zA-Z].*") && contraseña.matches(".*\\d.*");
    }
}
