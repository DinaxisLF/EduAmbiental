package Controlador;
import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    
    public Conexion(){
        
    }
    
  public static Connection getConnection(){
      
      Connection conex = null;
      
      try {
        //Registrar el driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        conex = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/accion","root","Hunter200301");
        System.out.println("Conexion exitosa");
    // Si hay errores informamos al usuario. 
    } catch (Exception e) {
        System.out.println("Error al conectar con la base de datos.\n"
                + e.getMessage().toString());
    }
    // Devolvemos la conexión.
    return conex;
      
      
  }
    
}
