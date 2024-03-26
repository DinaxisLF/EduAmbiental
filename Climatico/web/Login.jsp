<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Controlador.Registrar" %>
<!DOCTYPE html>


            

<html lang="en">
<head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Iniciar Sesion</title>
        <link href="css/form.css" rel="stylesheet" type="text/css"/>

</head>
<body>
    <section class="text-center">
        <div class="p-5 bg-image" style="
          background-image: url('Imagenes/FondoForm.jpg');
          height: 400px;
          "></div>
            
          
          <div class="card mx-4 mx-md-5 shadow-5-strong" style="
          margin-top: -100px;
          background: hsla(0, 0%, 100%, 0.8);
          backdrop-filter: blur(30px);
          ">
              
              <div class="card-body py-5 px-md-5">
                  <div class="row d-flex justify-content-center">
                      <div class="col-lg-8">
                          
                          <%
                              
                              if(request.getParameter("ok") != null){
                                    String Mensaje = request.getParameter("ok");  
                                    out.println("<h4><font color ='red'></font>"+Mensaje+"</h4>");
                            }    

                            
                              %>
                          <h2 class="fw-bold mb-5">Inicia Sesion</h2>
 
                          <form  method= "post" class="formulario" id="formulario" action="UserLogin">

                             
                              <div class="row">
                                  <div class="col-md-6 mb-4">
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
                                  <div class="col-md-6 mb-4">
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
                                  
                              </div>
                              
                              
                            <div class="formulario__grupo formulario__grupo-btn-enviar">
				<button type="submit" class="formulario__btn">Entrar</button>
                            </div>
                              <br><br>
                              <%if(request.getParameter("error") != null){
                                    String Mensaje = request.getParameter("error");  
                                    out.println("<h4><font color ='red'></font>"+Mensaje+"</h4>");
                            } %>
                          </form>

                      
                  </div>
              </div>
          </div>
    </section>
          
	<script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
</body>
</html>