<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Usuario"%>
<%@page import="Controlador.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! 
    UsuarioDAO usuarioDAO = new UsuarioDAO();
    
    
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link href="css/form.css" rel="stylesheet" type="text/css"/>
    <title>Actualizar Usuario</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"/>
    <link  rel="stylesheet" href="css/components.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/responsee.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="css/template-style.css">
    <link href="css/form.css" rel="stylesheet" type="text/css"/>
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
                                <a class="nav-link active" aria-current="page" href="AdminView.jsp">Tablero Principal</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="AdminActions">Usuarios</a>
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
                        <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-person-add" viewBox="0 0 16 16">
  <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0m-2-6a3 3 0 1 1-6 0 3 3 0 0 1 6 0M8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4"/>
  <path d="M8.256 14a4.474 4.474 0 0 1-.229-1.004H3c.001-.246.154-.986.832-1.664C4.484 10.68 5.711 10 8 10c.26 0 .507.009.74.025.226-.341.496-.65.804-.918C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4s1 1 1 1z"/>
</svg><h1 class="headline text-thin text-s-size-20">Actualizar Usuario</h1>
                    </div>
                </div>                                  
    
<hr>
<section class="text-center">
        <div class="p-5 bg-image"></div>
            
          
          <div class="card mx-4 mx-md-5 shadow-5-strong" style="
          margin-top: -100px;
          background: hsla(0, 0%, 100%, 0.8);
          backdrop-filter: blur(30px);
          ">
              
              <div class="card-body py-5 px-md-5">
                  <div class="row d-flex justify-content-center">
                      <div class="col-lg-8">
                          <form  method= "post" class="formulario" id="formulario" action="AdminActions?accion=actualizar">
                              <div class="row">
                                  <div class="col-md-8 mb-8 center">
                                     
                                      <!-- Grupo: Codigo -->
                                        <div class="formulario__grupo" id="grupo__codigo">
                                                <label for="codigo" class="formulario__label">Codigo</label>
                                                <div class="formulario__grupo-input">
                                                    <input type="text" class="formulario__input" name="codigo" id="nombre" placeholder="Codigo Usuario" required>
                                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                                </div>
                                        </div>
                                      
                               
                                  </div>
                                  
                              </div>
                              <div class="row">
                                  
                                  <div class="col-md-4 mb-4">
                                      <!-- Grupo: Nombre -->
                                        <div class="formulario__grupo" id="grupo__nombre">
                                                <label for="nombre" class="formulario__label">Nombre</label>
                                                <div class="formulario__grupo-input">
                                                    <input type="text" class="formulario__input" name="nombre" id="nombre" placeholder="Nombre" required>
                                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                                </div>
                                                <p class="formulario__input-error">El nombre debe contener de 4 a 30 digitos y solo debe incluir letras</p>
                                        </div>
                                      
                                  </div>
                                  <div class="col-md-4 mb-4">
                                      <!-- Grupo: Apellido Paterno -->
                                        <div class="formulario__grupo" id="grupo__apellido1">
                                                <label for="apellido1" class="formulario__label">Apellido Paterno</label>
                                                <div class="formulario__grupo-input">
                                                        <input type="text" class="formulario__input" name="apellido1" id="apellido1" placeholder="Apellido Paterno" required>
                                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                                </div>
                                                <p class="formulario__input-error">El apellido paterno debe contener de 1 a 30 digitos y solo debe incluir letras</p>
                                        </div>
                                       
                                  </div>
                                  <div class="col-md-4 mb-4">
                                      <!-- Grupo: Apellido Materno -->
                                        <div class="formulario__grupo" id="grupo__apellido2">
                                                <label for="apellido2" class="formulario__label">Apellido Materno</label>
                                                <div class="formulario__grupo-input">
                                                        <input type="text" class="formulario__input" name="apellido2" id="apellido2" placeholder="Apelido Materno" required>
                                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                                </div>
                                                <p class="formulario__input-error">El apellido materno debe contener de 1 a 30 digitos y solo debe incluir letras</p>
                                        </div>
                                       
                                  </div>
                              </div>
                              
                              <div class="row">
                                  
                                  <div class="col-md-4 mb-4">
                                      <!-- Grupo: Estado -->
                                        <div class="formulario__grupo" id="grupo__estado">
                                                <label for="estado" class="formulario__label">Estado</label>
                                                <div class="formulario__grupo-input">
                                                         <select name="estado"  id= "estado" class="formulario__input" required>
                                                                    <option value = "" ></option>
                                                                    <option value="Aguascalientes">Aguascalientes</option>
                                                                    <option value="Baja California">Baja California</option>
                                                                    <option value="Baja California Sur">Baja California Sur</option>
                                                                    <option value="Campeche">Campeche</option>
                                                                    <option value="Chiapas">Chiapas</option>
                                                                    <option value="Chihuahua">Chihuahua</option>
                                                                    <option value="CDMX">Ciudad de México</option>
                                                                    <option value="Coahuila">Coahuila</option>
                                                                    <option value="Colima">Colima</option>
                                                                    <option value="Durango">Durango</option>
                                                                    <option value="Estado de México">Estado de México</option>
                                                                    <option value="Guanajuato">Guanajuato</option>
                                                                    <option value="Guerrero">Guerrero</option>
                                                                    <option value="Hidalgo">Hidalgo</option>
                                                                    <option value="Jalisco">Jalisco</option>
                                                                    <option value="Michoacán">Michoacán</option>
                                                                    <option value="Morelos">Morelos</option>
                                                                    <option value="Nayarit">Nayarit</option>
                                                                    <option value="Nuevo León">Nuevo León</option>
                                                                    <option value="Oaxaca">Oaxaca</option>
                                                                    <option value="Puebla">Puebla</option>
                                                                    <option value="Querétaro">Querétaro</option>
                                                                    <option value="Quintana Roo">Quintana Roo</option>
                                                                    <option value="San Luis Potosí">San Luis Potosí</option>
                                                                    <option value="Sinaloa">Sinaloa</option>
                                                                    <option value="Sonora">Sonora</option>
                                                                    <option value="Tabasco">Tabasco</option>
                                                                    <option value="Tamaulipas">Tamaulipas</option>
                                                                    <option value="Tlaxcala">Tlaxcala</option>
                                                                    <option value="Veracruz">Veracruz</option>
                                                                    <option value="Yucatán">Yucatán</option>
                                                                    <option value="Zacatecas">Zacatecas</option>
                                                                </select>
                                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                                </div>
                                                <p class="formulario__input-error">El usuario tiene que ser de 4 a 16 dígitos y solo puede contener numeros, letras y guion bajo.</p>
                                        </div>
                                        
                                  </div>
                                  <div class="col-md-4 mb-4">
                                      <!-- Grupo: Municipio -->
                                        <div class="formulario__grupo" id="grupo__municipio">
                                                <label for="municipio" class="formulario__label">Municipio</label>
                                                <div class="formulario__grupo-input">
                                                        <input type="text" class="formulario__input" name="municipio" id="municipio" placeholder="Municipio" required>
                                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                                </div>
                                                <p class="formulario__input-error">El municipio solo debe incluir letras</p>
                                        </div>
                                       
                                  </div>
                                  <div class="col-md-4 mb-4">
                                      <!-- Grupo: Colonia -->
                                            <div class="formulario__grupo" id="grupo__colonia">
                                                    <label for="colonia" class="form-label">Colonia</label>
                                                    <div class="formulario__grupo-input">
                                                            <input type="text" class="formulario__input" name="colonia" id="colonia" placeholder="Colonia" required>
                                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                                    </div>
                                                    <p class="formulario__input-error">La colonia solo debe incluir letras</p>
                                            </div>

                                  </div>
                              </div>
                              
                              <div class="row">
                                  
                                  <div class="col-md-8 mb-8 center">
                                      <!-- Grupo: Correo Electronico -->
                                            <div class="formulario__grupo" id="grupo__correo">
                                                    <label for="correo" class="formulario__label">Correo Electrónico</label>
                                                    <div class="formulario__grupo-input">
                                                            <input type="email" class="formulario__input" name="correo" id="correo" placeholder="correo@correo.com">
                                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                                    </div>
                                                    <p class="formulario__input-error">El correo solo puede contener letras, numeros, puntos, guiones y guion bajo.</p>
                                            </div>
                                  </div>


                              </div>
                              
                              

                            <div class="formulario__grupo formulario__grupo-btn-enviar">
				<button type="submit" class="formulario__btn">Actualizar</button>

                            </div>
                              
                          </form>
                      </div> 
                      
                  </div>
              </div>
          </div>
    </section> 

   <script src="js/ValidarForm.js" type="text/javascript"></script>
    <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>