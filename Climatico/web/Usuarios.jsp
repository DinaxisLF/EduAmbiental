<%@page import="java.util.ArrayList"%>
<%@page import="Controlador.UsuarioDAO"%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%! 
    UsuarioDAO usuarioDAO = new UsuarioDAO();
    ArrayList<Usuario> usuarios = usuarioDAO.Usuarios();
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/board.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Usuarios</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"/>
    <link  rel="stylesheet" href="css/components.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/responsee.css">
    <link rel="stylesheet" href="css/tabla.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="css/template-style.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
</head>



<body class="size-1140">
    
     <!-- Barra Perfil -->
    <div class="row">
        <div class="col-12"> 
              <nav class="navbar navbar-expand-lg background-white background-primary-hightlight">
                  <div class="row">
                      <div class = "col-3" >
                          <div class="container-fluid">
                              <a href="#" class="d-block link-dark text-decoration-none s-3" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                          <img src="https://images.freeimages.com/images/large-previews/023/geek-avatar-1632962.jpg" alt="mdo" width="80" height="80" class="rounded-circle">
                        </a>
                    <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
                      <li><a class="dropdown-item" href="TableroUsuario.jsp">Inicio</a></li>
                      <li><a class="dropdown-item" href="Perfil.jsp">Perfil</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="Logout">Cerrar Sesion</a></li>
                    </ul>
                          </div>
                          <div class="row">
                              <div class="container-fluid" style="text-align:justify">
                                  <br>
                                     <p class="h4">${username}</p>

                                </div>
                             
                          </div>    
                      </div>
                   
                      
                     <div class="col-7">
                      <div class="container-fluid">
                        <ul class="nav  nav-tabs">
                          <div class="top-nav s-12 l-10">
                            <p class="nav-text"></p>
                            <ul class="chevron">
                              <li class="nav-item">
                                <a class="nav-link " aria-current="page" href="AdminView.jsp">Tablero Principal</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="Contenido.jsp">Usuarios</a>
                              </li>
                            </ul>
                          </div>
                          
                            
                          </ul>
                    </div>
                         
                     </div> 
                            
                      <div class="col-2">
                                
                            <a href="TableroUsuario.jsp" class="logo"><img src="Imagenes/Logo.jpg" alt=""></a>
          
                            </div>      
                            
                  </div>        
              </nav>
              

          </div>
          
                            
    </div>
                                     
    
                                     
                                     
     <div class="row" style="background-color: #002633;">
         <br>
                    <div class="container-lg text-center text-white">
                        <br>
                        <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-person-bounding-box" viewBox="0 0 16 16">
  <path d="M1.5 1a.5.5 0 0 0-.5.5v3a.5.5 0 0 1-1 0v-3A1.5 1.5 0 0 1 1.5 0h3a.5.5 0 0 1 0 1zM11 .5a.5.5 0 0 1 .5-.5h3A1.5 1.5 0 0 1 16 1.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 1-.5-.5M.5 11a.5.5 0 0 1 .5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 1 0 1h-3A1.5 1.5 0 0 1 0 14.5v-3a.5.5 0 0 1 .5-.5m15 0a.5.5 0 0 1 .5.5v3a1.5 1.5 0 0 1-1.5 1.5h-3a.5.5 0 0 1 0-1h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 1 .5-.5"/>
  <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zm8-9a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
</svg><h1 class="headline text-thin text-s-size-20">Usuarios</h1>
                    </div>
                </div>                                  
    
<hr>

<section>

    <div class="row text-center">
        <%
                   if(!request.getParameter("mensaje").equals(null)){
                       String Mensaje = request.getParameter("mensaje");  
                       out.println("<h4><font color ='red'></font>"+Mensaje+"</h4>");
                   }
               %>
    </div>
       <div class = "row">
           
           <div class=" col-1">
               
           </div>
           <div class=" col-3 center">
               
                <a href="AgregarUsuario.jsp" class="btn btn-success text-white">Agregar</a>
           </div>
           <div class=" col-3 center">
               
                <a href="ActualizarUsuario.jsp" class="btn btn-primary text-white">Actualizar</a>
           </div>
           <div class="col-3 center">
               
                <a href="EliminarUsuarios.jsp" class="btn btn-danger text-white">Eliminar</a>
           </div>
           
       
       </div>


            

        
 
</section>
<br><br>
<section>
    
    

    <div class=" container-lg">
       <table class="fl-table">
        <thead>
       <tr>
            <th>Nombre De Usuario</th>
            <th>Nombre</th>
            <th>Estado</th>
            <th>Municipio</th>
            <th>Colonia</th>
            <th>Correo</th>
            <th>Status</th>
      
        </tr>
        </thead>
        <tbody>
        <%  
            for (Usuario datos : usuarios) {
                    
                
        %>
    <tr>
      <td><%= datos.getNombre_Usuario() %></td> 
      <td> <%= datos.getNombre() + " " +  datos.getApellido1() + " " +  datos.getApellido2()  %></td>
      <td><%= datos.getEstado() %></td>
      <td><%= datos.getMunicipio() %></td>
      <td><%= datos.getColonia() %></td>
      <td><%= datos.getEmail() %></td>
      <td><%= datos.getActivo()%></td>
      
      <% } %>
    </tr>

        <tbody>
    </table> 
    </div>
    
</section>
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>