
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Controlador.Registrar" %>
<!DOCTYPE html>

             
            
            

<html lang="en">
<head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Validación de Formulario con Javascript</title>
        <link href="css/form.css" rel="stylesheet" type="text/css"/>

</head>
<body>
    <section class="text-center">
        <div class="p-5 bg-image" style="
          background-image: url('Imagenes/FondoForm.jpg');
          height: 200px;
          "></div>
            
          
          <div class="card mx-4 mx-md-5 shadow-5-strong" style="
          margin-top: -100px;
          background: hsla(0, 0%, 100%, 0.8);
          backdrop-filter: blur(30px);
          ">
              
              <div class="card-body py-5 px-md-5">
                  <div class="row d-flex justify-content-center">
                      <div class="col-lg-8">
                          <h2 class="fw-bold mb-5">Registrarse</h2>
                          <%
                              
                              if(request.getParameter("mensaje") != null){
                                    String Mensaje = request.getParameter("mensaje");  
                                    out.println("<h4><font color ='red'></font>"+Mensaje+"</h4>");
                            }          
                              %>
                          <form  method= "post" class="formulario" id="formulario" action="Registrar">
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
                                  <div class="col-md-4 mb-4">
                                      <!-- Grupo: Usuario -->
                                        <div class="formulario__grupo" id="grupo__usuario">
                                                <label for="usuario" class="formulario__label">Usuario</label>
                                                <div class="formulario__grupo-input">
                                                        <input type="text" class="formulario__input" name="usuario" id="usuario" placeholder="Nombre De Usuario" required>
                                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                                </div>
                                                <p class="formulario__input-error">El usuario tiene que ser de 4 a 16 dígitos y solo puede contener numeros, letras y guion bajo.</p>
                                        </div>
                                  </div>
                                  <div class="col-md-4 mb-4">
                                        <!-- Grupo: Contraseña -->
                                            <div class="formulario__grupo" id="grupo__password">
                                                    <label for="password" class="formulario__label">Contraseña</label>
                                                    <div class="formulario__grupo-input">
                                                            <input type="password" class="formulario__input" name="password" id="password" required>
                                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                                    </div>
                                                    <p class="formulario__input-error">La contraseña tiene que ser de 8 a 16 dígitos.</p>
                                            </div>
                                  </div>
                                  <div class="col-md-4 mb-4">
                                        <!-- Grupo: Contraseña 2 -->
                                         <div class="formulario__grupo" id="grupo__password2">
                                                 <label for="password2" class="formulario__label">Repetir Contraseña</label>
                                                 <div class="formulario__grupo-input">
                                                         <input type="password" class="formulario__input" name="password2" id="password2">
                                                         <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                                 </div>
                                                 <p class="formulario__input-error">Ambas contraseñas deben ser iguales.</p>
                                         </div>
                                  </div>
                              </div>
                              
                              <div class="row">
                                  <div class="col-md-4 mb-4">
                                      
                                  </div>
                                  <div class="col-md-4 mb-4">
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
				<button type="submit" class="formulario__btn">Enviar</button>

                            </div>
                              
                          </form>
                      </div> 
                      
                  </div>
              </div>
          </div>
    </section>
          

    
        <script src="js/ValidarForm.js" type="text/javascript"></script>
	<script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
</body>
</html>