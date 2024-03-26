<!DOCTYPE html>


<%
    response.setHeader("Pragma", "no-cache");
    response.addHeader("Cache-control", "must-revalidate");
    response.addHeader("Cache-control", "no-cache");
    response.addHeader("Cache-control", "no-store");
    response.addDateHeader("Expires", 0);
    
    try{
        if(session.getAttribute("username") == null){
        request.getRequestDispatcher("Principal.jsp").forward(request, response);
   }
    }catch(Exception e){
        request.getRequestDispatcher("Principal.jsp").forward(request, response);
    }
    

    %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contenido</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>EduAmbiental</title>
    <link rel="stylesheet" href="css/Chat.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"/>
    <link rel="stylesheet" href="css/components.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/responsee.css">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <!-- CUSTOM STYLE -->
    <link rel="stylesheet" href="css/template-style.css">
    </head>
    <body class="size-1140">
 
        
        
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
                                <a class="nav-link " aria-current="page" href="TableroUsuario.jsp">Tablero Principal</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="Contenido.jsp">Contenido</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="Memo.jsp">Juego</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="EduBot.jsp">EduBot</a>
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

     <section class="section background-dark"> 
        
                <div class="text-center"> 
          
            <h2 class="headline text-thin text-s-size-30"><span class="text-primary">Cambio Climatico</span></h2>

                </div> 
                
      </section>
        
               
        
         <!-- Introduccion Contenido -->
         
        <section class="section background-white">
           <div class="container-fluid"  style="text-align:left;">
            <h2 class="headline text-thin text-s-size-30">Acción Por El <span class="text-primary">Clima</span></h2>
            <br> <br>
            <div class="container-fluid" style="text-align:justify;">
                <div class="row">
                    <div class="col-8">
                        <p class="text-size-20 text-s-size-16 text-thin"> Bienvenido al curso, aqui aprenderas sobre el cambio climatico, sus consecuencias, causas y acciones
                            que podemos tomar para disminuir su impacto y contribuir al planeta.</p>
                     </div>
            
                </div>
                <div class="row">
                    <div class="col-8" >
                        <img src="Imagenes/nature-1370391.jpg" class="img-fluid">
                    </div>
                    <div class="col-1"></div>
                     
                </div>
                
            </div>
        </div> 
        </section>

        
        <section>
            
         <div data-aos="flip-up" class="full-width text-center"> 
            <h2 class="headline text-thin text-s-size-30">Contenido</h2>
                </div> 
        
        <br> <br>
        <div class="container-lg">

            <div class="row">
                <div class="col-4">
                    <div class="col">
                        <div data-aos="fade-right" class="card card-cover h-100 overflow-hidden text-center bg-dark rounded-5 shadow-lg" style="background-image: url('Imagenes/Contenido_1.png');">
                          <div class="d-flex flex-column h-100 p-5 pb-3 text-dark-hover text-center text-shadow-1">
                            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold"><font color="#0000ff">Cambio Climatico</font></h2>
                             <p class="text-center text-white"><a href="CambioClimatico.jsp" class="btn btn-success">Entrar</a> </p>
                          </div>
                        </div>
                      </div>
                </div>

                <div class="col-8">
                    <div data-aos="fade-left" class="accordion" id="accordionExample">
                        <div class="accordion-item">
                          <h2 class="accordion-header" id="headingOne" >
                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#Contenido1One" aria-expanded="true" aria-controls="Contenido1One">
                              <p class="h3">El Cambio Climatico</p>

                            </button>
                          </h2>
                          <div id="Contenido1One" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                              <strong>¿Qué es el cambio Climatico?</strong>  Que es en realidad el cambio climatico, de donde surge.
                            </div>
                          </div>
                        </div>
                        <div class="accordion-item">
                          <h2 class="accordion-header" id="headingTwo">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#Contenido1Two" aria-expanded="false" aria-controls="Contenido1Two">
                              <p class="h3">Calentamiento Global</p>
                            </button>
                          </h2>
                          <div id="Contenido1Two" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <strong>Calentamiento Global.</strong> A que se le conoce como caletamiento global y como este se relaciona con el cambio climatico.
                            </div>
                          </div>
                        </div>
                        <div class="accordion-item">
                          <h2 class="accordion-header" id="headingThree">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#Contenido1Three" aria-expanded="false" aria-controls="Contenido1Three">
                              <p class="h3">¿Comó Ha Cambiado El Clima?</p>
                            </button>
                          </h2>
                          <div id="Contenido1Three" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <strong>El clima ha cambiado.</strong> De que forma ha sido este proceso y como se puede ver hoy en dia.
                            </div>
                          </div>
                        </div>
                      </div>
                </div>

                <hr class="gradient">
            </div>

            <br> <br>
            <div class="row">
                <div class="col-4">
                    <div data-aos="fade-right" class="card card-cover h-100 overflow-hidden text-center bg-dark rounded-5 shadow-lg" style="background-image: url('Imagenes/Contenido_2.png');">
                          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-center text-shadow-1">
                            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Impacto Global</h2>
                            <p class="text-center text-white"><a href="ImpactoGlobal.jsp" class="btn btn-success">Entrar</a> </p>                          </div>
                        </div>
                </div>

                <div class="col-8">

                    <div data-aos="fade-left" class="accordion" id="accordionExample">
                        <div class="accordion-item">
                          <h2 class="accordion-header" id="headingOne">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                              <p class="h3">Causas</p>
                            </button>
                          </h2>
                          <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <strong>Principales Causas.</strong> Los principales motivos que contribuyen al cambio climatico y como es que estos lo hacen.
                            </div>
                          </div>
                        </div>
                        <div class="accordion-item">
                          <h2 class="accordion-header" id="headingTwo">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                              <p class="h3">Consecuencias</p>
                            </button>
                          </h2>
                          <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <strong>Impacto Global.</strong> Como se ve reflejado en la actualidad y en los ultimos años las consecuencias del cambio climatico, asi como futuras
                                consecuencias si no de toma la accion para disminuir su impacto.
                            </div>
                          </div>
                        </div>
                        <div class="accordion-item">
                          <h2 class="accordion-header" id="headingThree">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                              <p class="h3">¿Existe una solución?</p>
                            </button>
                          </h2>
                          <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <strong>La respuesta es si.</strong> Existen multiples soluciones a las cuales podemos acudir para ayudar a resolver este problema.
                            </div>
                          </div>
                        </div>
                      </div>

                </div>

                <hr class="gradient">
            </div>

            <br> <br>
            <div class="row">
                <div class="col-4">
                    <div class="col">
                        <div data-aos="fade-right" class="card card-cover h-100 overflow-hidden text-center bg-dark rounded-5 shadow-lg" style="background-image: url('Imagenes/Contenido_3.png');">
                          <div class="d-flex flex-column h-100 p-5 pb-3  text-center text-shadow-1">
                              <font color="#ffae00" <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">¿Como Ponerse En Acción?</h2></font>
                             <p class="text-center text-white"><a href="EnAccion.jsp" class="btn btn-success">Entrar</a> </p> 
                          </div>
                        </div>
                      </div>
                </div>

                <div class="col-8">

                    <div data-aos="fade-left"  class="accordion" id="accordionExample">
                        <div class="accordion-item">
                          <h2 class="accordion-header" id="headingOne">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#C1" aria-expanded="true" aria-controls="C1">
                              <p class="h3">Acciones Personales</p>
                            </button>
                          </h2>
                          <div id="C1" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <strong>¿Qué Puedo Hacer Yo?</strong> Cuales con esas acciones que puedo tomar como individuo para disminuit mi huella ecologica y sobre todo para 
                                poder compartirlo con los demas y mi comunidad.               
                            </div>
                          </div>
                        </div>
                        <div class="accordion-item">
                          <h2 class="accordion-header" id="headingTwo">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#C2" aria-expanded="false" aria-controls="C2">
                              <p class="h3">¿Qué Pueden Hacer Las Empresas?</p>
                            </button>
                          </h2>
                          <div id="C2" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <strong>¿Y Las Empresas?</strong> Es importante que de igual manera las empresas tomen accion, desde una gran compañia hasta un pequeño Startup recien fundado.
                            </div>
                          </div>
                        </div>
                      </div>

                </div>


            </div>

        </div>
            
        </section>
         
         <br><br><br><br>
     
          <!-- FOOTER -->
    <footer>
 
      

      <hr class="break margin-top-bottom-0" style="border-color: rgba(0, 38, 51, 0.80);">
      
      <!-- Bottom Footer -->
      <section class="padding background-dark">
        <div class="line">
          <div class="s-12 l-6">
            <p class="text-size-12">Centro Universitario de Tonala</p>
            
          </div>
  
        </div>
      </section>
    </footer>  
        
        

        <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>    
        <script type="text/javascript" src="js/validation.js"></script> 
        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script>
            AOS.init();
        </script> 
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
