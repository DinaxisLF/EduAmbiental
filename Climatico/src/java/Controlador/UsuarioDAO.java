package Controlador;
import java.sql.*;
import Modelo.Usuario;
import java.util.ArrayList;
import java.util.List;


public class UsuarioDAO {
    
     Connection conexion;
    
    public UsuarioDAO(){
       
        conexion = Conexion.getConnection();
        
       
    }
    
    public ArrayList<Usuario> Usuarios(){
        
        PreparedStatement ps;
        ResultSet rs;
        
        ArrayList<Usuario> lista = new ArrayList<>();
        
        try{
            
            ps = conexion.prepareStatement("call consultar_usuarios()");
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                int codigo = rs.getInt("codigo_usuario");
                String nombre = rs.getString("Nombre");
                String apellido1 = rs.getString("Apellido1");
                String apellido2 = rs.getString("Apellido2");
                String estado = rs.getString("Estado");
                String municipio  = rs.getString("Municipio");
                String colonia = rs.getString("Colonia");
                String email = rs.getString("Email");
                String nombre_usuario = rs.getString("nombre_usuario");
                int activo = rs.getInt("activo");
                
                Usuario u = new Usuario(nombre, apellido1, apellido2, estado, municipio, colonia, email, nombre_usuario, activo);
                lista.add(u);
                    
                
                
            }
            System.out.println("Usuarios consultados");
            return lista;
            
            
        }catch(SQLException e){
            System.out.println("Usuarios no consultados");
            return null;
        }
        
    }
    
    public Usuario mostrarUsuario(String username){
        
        PreparedStatement ps;
        ResultSet rs;
        Usuario user = null;
        
        try{
            
            ps = conexion.prepareStatement("Select U.codigo_usuario, U.Nombre, U.Apellido1, U.Apellido2, U.Estado, U.Municipio, U.Colonia , U. Email," +
" L.nombre_usuario, R.id_rol from Rol R, Usuario U inner join Login L on U.codigo_usuario = L.codigo_usuario" +
"  where L.activo = 1 and R.id_rol = 1 and L.nombre_usuario = ?");
           ps.setString(1, username);
            
            rs = ps.executeQuery();
            
            while(rs.next()){
                int codigo_usuario = rs.getInt("codigo_usuario");
                String nombre = rs.getString("Nombre");
                String apellido1 = rs.getString("Apellido1");
                String apellido2 = rs.getString("Apellido2");
                String estado = rs.getString("Estado");
                String municipio  = rs.getString("Municipio");
                String colonia = rs.getString("Colonia");
                String email = rs.getString("Email");
                String nombre_usuario = rs.getString("nombre_usuario");
                byte activo = rs.getByte("acitvo");
                
                 user = new Usuario(nombre, apellido1, apellido2, estado, municipio, colonia, email, nombre_usuario, activo);
                 
            }
            
            
            System.out.println("Datos Del Usuario Encontrados");
            return user;
            
        }catch(SQLException e){
            System.out.println("Datos Del Usuario No Encontrados");
            
        }
        return null;
    }
    
    public int registrarUsuario( Usuario usr) throws SQLException{
        int status = 0;
        
        try{
            
            
            
            String registro = "Call registrar(?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement ps = conexion.prepareStatement(registro);
            
            ps.setString(1, usr.getNombre());
            ps.setString(2, usr.getApellido1());
            ps.setString(3,usr.getApellido2());
            ps.setString(4, usr.getEstado());
            ps.setString(5, usr.getMunicipio());
            ps.setString(6, usr.getColonia());
            ps.setString(7, usr.getEmail());
            ps.setString(8, usr.getNombre_Usuario());
            ps.setString(9, usr.getContraseña());
            
            status = ps.executeUpdate();
            System.out.println("Registro realizado");
            conexion.close();
            return status;
            
        }catch(SQLException e){
            conexion.close();
            System.out.println("Error en el registro");
            System.out.println(e.getMessage());
            return status;
            
        }
       
    }
    
    
    public int actualizarUsuario(Usuario usr){
      int status = 0;
        
        try{
            
            
            
            String registro = "Call actualizar_usuario(?,?,?,?,?,?,?,?)";
            
            PreparedStatement ps = conexion.prepareStatement(registro);
            
            ps.setInt(1, usr.getCodigo());
            ps.setString(2, usr.getNombre());
            ps.setString(3, usr.getApellido1());
            ps.setString(4,usr.getApellido2());
            ps.setString(5, usr.getEstado());
            ps.setString(6, usr.getMunicipio());
            ps.setString(7, usr.getColonia());
            ps.setString(8, usr.getEmail());
            
            
            status = ps.executeUpdate();
            System.out.println("Usuario Actualizado");
            return status;
            
        }catch(SQLException e){
            System.out.println("Error al actualizar datos del usuario");
            System.out.println(e.getMessage());
            return status;
            
          
        
    }
        
    }
 
    

    public int eliminarUsuario (int codigo){
        
        PreparedStatement ps;
        
        try{
            
            
            ps = conexion.prepareStatement("delete from usuario where codigo_usuario = ?");
            ps.setInt(1, codigo);
            ps.execute();
            System.out.println("Usuario Eliminado");
            return codigo;
            
        }catch (SQLException e){
            System.out.println("Usuario No Eliminado");
            return codigo;
        }
    }
    
    
    public static boolean Login(String usr_name, String pass){
        
        Connection con = Conexion.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String sql = ("Select L.codigo_usuario, R.descripcion from Login L inner join Rol R on L.id_rol = R.id_rol" +
                        " where L.activo = 1 and L.nombre_usuario = ? And L.contraseña = md5(?)");
        
        try{
            
            ps = con.prepareStatement(sql);
            ps.setString(1, usr_name);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                con.close();
                return true;
            }
            
            
        }catch(Exception e){
            System.out.println("Errot " + e.getMessage());
        }
        
        return false;
    }
    
    
}
    
   

