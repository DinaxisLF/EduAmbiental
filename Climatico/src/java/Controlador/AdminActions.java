
package Controlador;

import Modelo.Usuario;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dinaxis
 */
@WebServlet(name = "AdminActions", urlPatterns = {"/AdminActions"})
public class AdminActions extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       
        String accion = request.getParameter("accion");
        RequestDispatcher dispatcher = null;

 
        if(accion == null || accion.isEmpty()){
            dispatcher = request.getRequestDispatcher("Usuarios.jsp?mensaje=");
      
        }else if("agregado".equals(accion)){
                
          String nombre, apellido1, apellido2, estado, colonia, municipio, username, pass, email;
          nombre = request.getParameter("nombre");
          apellido1 = request.getParameter("apellido1");
          apellido2 = request.getParameter("apellido2");
          estado = request.getParameter("estado");
          colonia = request.getParameter("colonia");
          municipio = request.getParameter("municipio");
          pass = request.getParameter("password");
          username = request.getParameter("usuario");
          email = request.getParameter("correo");  

          Usuario usr = new Usuario(nombre, apellido1, apellido2, estado, municipio, colonia, email, username, pass);
                     
          UsuarioDAO r = new UsuarioDAO();
          
          try{
             int status = r.registrarUsuario(usr);
          
          if(status > 0){
              String mensaje = "Registro Exitoso";
              dispatcher = request.getRequestDispatcher("Usuarios.jsp?mensaje="+mensaje);

          }else{
              String error= "Registro incorrecto";
              dispatcher = request.getRequestDispatcher("Usuarios.jsp?mensaje="+error);
          } 
          }catch(SQLException e){
              String error= "Registro incorrecto";
              dispatcher = request.getRequestDispatcher("Usuarios.jsp?mensaje="+error);
          }           
            
        }else if("eliminar".equals(accion)){
            
                
                int codigo_usuario = Integer.parseInt(request.getParameter("usuarioSeleccionado"));
                UsuarioDAO usuarioDAO = new UsuarioDAO();
                int status = usuarioDAO.eliminarUsuario(codigo_usuario);
                
                if(status > 0){
                  dispatcher = request.getRequestDispatcher("Usuarios.jsp?mensaje="+"Usuario Eliminado");   
                }else{
                     dispatcher = request.getRequestDispatcher("Usuarios.jsp?mensaje="+"Usuario No Eliminado");
                }
            
                    
                
            } else if("actualizar".equals(accion)){
                int codigo;
                String nombre, apellido1, apellido2, estado, colonia, municipio, username, pass, email;
                codigo = Integer.parseInt(request.getParameter("codigo"));
                nombre = request.getParameter("nombre");
                apellido1 = request.getParameter("apellido1");
                apellido2 = request.getParameter("apellido2");
                estado = request.getParameter("estado");
                colonia = request.getParameter("colonia");
                municipio = request.getParameter("municipio");
                email = request.getParameter("correo");  
                
                 Usuario usr = new Usuario(codigo, nombre, apellido1, apellido2, estado, municipio, colonia, email);
                     
                 UsuarioDAO r = new UsuarioDAO();
                 
                 int status = r.actualizarUsuario(usr);
                
                if(status > 0){
                  dispatcher = request.getRequestDispatcher("Usuarios.jsp?mensaje="+"Usuario Actualizado");   
                }else{
                     dispatcher = request.getRequestDispatcher("Usuarios.jsp?mensaje="+"Usuario No Actualizado");
                }
            }
            
            
            else{
            
        }
        
        dispatcher.forward(request, response);
    
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        doGet(request, response);
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
