
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexionBD {
   private static final String URL = "jdbc:mysql://localhost:3306/bd_tiendaropa";
   private static final String USER = "root";
   private static final String PASSWORD = "";
   private static Connection mockConnection;

   public static Connection obtenerConexion() {
       if (mockConnection != null) {
           return mockConnection;
       }

       Connection conexion = null;
       try {
           Class.forName("com.mysql.cj.jdbc.Driver");
           conexion = DriverManager.getConnection(URL, USER, PASSWORD);
           System.out.println("Conexión exitosa a la base de datos");
       } catch (ClassNotFoundException e) {
           System.err.println("Driver no encontrado: " + e.getMessage());
       } catch (SQLException e) {
           System.err.println("Error de conexión: " + e.getMessage());
       } catch (Exception e) {
           System.err.println("Error inesperado: " + e.getMessage());
       }
       return conexion;
   }

   public static void setConnection(Connection connection) {
       mockConnection = connection;
   }

   public static void clearConnection() {
       mockConnection = null;
   }
}