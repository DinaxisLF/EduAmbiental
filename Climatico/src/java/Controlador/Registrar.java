/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controlador;

import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dinaxis
 */
@WebServlet(name = "Registrar", urlPatterns = {"/Registrar"})
public class Registrar extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
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
              
              response.sendRedirect("Login.jsp");

          }else{
              String error= "Registro incorrecto";
              response.sendRedirect("RegistroUsuario.jsp?error="+error);
          }
          }catch(SQLException e){
              String error= "Registro incorrecto";
              response.sendRedirect("RegistroUsuario.jsp?error="+error);
          }
          
        
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        doGet(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
