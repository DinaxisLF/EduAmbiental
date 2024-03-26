<!DOCTYPE html>
<%@ page contentType="text/html; charset=ISO-8859-1" %>

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
<html lang="en-US">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>EduAmbiental</title>
    <link rel="stylesheet" href="css/Chat.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"/>
    <script src="js/Bot.js" defer></script>
    <link rel="stylesheet" href="css/components.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/responsee.css">
    <link rel="stylesheet" href="owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="owl-carousel/owl.theme.css">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <!-- CUSTOM STYLE -->
    <link rel="stylesheet" href="css/template-style.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>    
    <script type="text/javascript" src="js/validation.js"></script> 
   
    
  </head>  
  
  <body class="size-1140">
     <button class="chatbot-toggler">
            <span class="material-symbols-outlined">mode_comment</span> 
            <span class="material-symbols-outlined">close</span> 
        </button>
        <div class="chatbot">
            <header>
                <h2>ChatBot</h2>
            </header>
            <ul class="chatbox">
                <li class="chat incoming">
                    <span class="material-symbols-outlined">smart_toy</span>
                    <p>Hola ${username} <br>¿Cómo puedo ayudarte <br>el dia de hoy?</p>
                </li>
            </ul>
            <div class="chat-input">
                <textarea placeholder="Escribe tu mensaje..." required></textarea>
                <span class="material-symbols-outlined">send</span>
            </div>
        </div> 
      

    <!-- Barra Perfil -->
    <div class="row">
        <div class="col-12"> 
              <nav class="navbar navbar-expand-lg background-white background-primary-hightlight">
                  <div class="row">
                      <div class = "col-3" >
                          <div class="container-fluid">
                              <a href="#" class="d-block link-dark text-decoration-none  s-3" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
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
                                <a class="nav-link active" aria-current="page" href="TableroUsuario.jsp">Tablero Principal</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="Contenido.jsp">Contenido</a>
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
    
   
        
   
          
      
    
    <!-- MAIN -->
    <main role="main">
      <!-- Carrusel Principal -->
      <section class="section background-dark">
        <div class="line">
          <div class="carousel-fade-transition owl-carousel carousel-main carousel-nav-white">
            <div class="item">
              <div class="s-12 center">
                <img src="Imagenes/boxed1.jpg" alt="">
                <div class="carousel-content">
                  <div class="padding-2x">
                    <div class="s-12 m-12 l-8">
                      <p class="text-white text-s-size-50 text-m-size-40 text-l-size-60 margin-bottom-40 text-thin text-line-height-1"> EduAmbiental</p>
                      <p class="text-white text-size-16 margin-bottom-40"><br> "Un pequeño paso para ti, un gran salto para nuestro planeta."</p>  
                    </div>                  
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="s-12 center">
                <img src="Imagenes/boxed2.jpg" alt="">
                <div class="carousel-content">
                  <div class="padding-2x">
                    <div class="s-12 m-12 l-8">
                      <p class="text-white text-s-size-50 text-m-size-40 text-l-size-60 margin-bottom-40 text-thin text-line-height-1">EduAmbiental</p>
                      <p class="text-white text-size-16 margin-bottom-30"> Descubre la belleza de nuestro planeta y aprende a cuidarlo. Juntos, construyamos un futuro sostenible."</p>    
                    </div>                  
                  </div>
                </div>
              </div>
            </div>
          </div>  
        </div>
      </section>


      <!-- Section 1 -->
      <section class="section background-white"> 
        

            <h2 class="headline text-thin text-center text-s-size-30">Hola, <span class="text-primary">Bienvenido</span></h2>
            <div class="s-12 m-10 l-8 center">
                <p class="text-size-20 text-s-size-16 text-thin" style="text-align: center">Gracias por estar interesado en un mundo mejor para nuestra y futuras generaciones, te agredecemos por querer ser parte 
                        del cambio y comenzar con pequeñas acciones que nos pueden llevar a un gran cambio, dentro de la plataforma podras 
                        encontrar, distinta informacion y pequeños cursos donde aprenderas acerca del cambio climatico, sus consecuencias, las
                        causas, asi como acciones que puedes tomar en tu dia a dia para contribuir a la disminucion de su impacto en años proximos.</p>
            
                        <img src="Tablero_Bienvenida.jpg" class="img-fluid" alt="...">
          </div>
  
                
            
  
        
      </section>
      
      <!-- Section 2 -->
      <section class="section background-primary text-center">
        <div data-aos="zoom-in-right" class="line">
          <div class="s-12 m-10 l-8 center">
            <h2 class="headline text-thin text-s-size-30">Unidos, tenemos el poder de cambiar el mundo.</h2>
            <p class="text-size-20">"Pequeñas acciones, grandes cambios. ¡Cuidemos nuestro hogar, la Tierra!"</p>
          </div>
        </div>  
      </section>
      
      <section class="section background-white">
          <div data-aos="fade-up" class="full-width text-center"> 
               <img class="center margin-bottom-30" style="margin-top: -20px;" src="Imagenes/bio.png" alt="">
          </div>
      </section>
     
         
      
      <section class="section background-white">
        <div data-aos="flip-up" class="full-width text-center"> 
          
            <h2 class="headline text-thin text-s-size-30">Accion por el <span class="text-primary">clima</span></h2>
        </div>  
          
          <div class='container-lg'>
              <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">

      <!-- Objetivo card -->
      <div class="col">
        <div data-aos="flip-up" class="card card-cover h-100 overflow-hidden text-center bg-dark rounded-5 shadow-lg" style="background-image: url('Imagenes/Accion Climatica.gif');">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-center text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Objetivo 13</h2>
                         <p class="text-center"><button type="button" class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target="#Popover1">Mostrar</button></p>

          </div>

        </div>
      </div>

      
      <!-- ¿Por que? card -->
      <div class="col">
        <div data-aos="flip-up" class="card card-cover h-100 overflow-hidden text-center bg-dark rounded-5 shadow-lg" style="background-image: url('Imagenes/on-fire-earth.gif');">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-center text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">¿Por qué?</h2>
                         <p class="text-center"><button type="button" class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target="#Popover2">Mostrar</button></p>

          </div>

        </div>
      </div>
      
      
      <!-- Metas card -->
      <div class="col">
          <div class="container-fluid h-100 overflow-hidden text-center bg-dark rounded-5 shadow-lg" style="background-image: url('Imagenes/Metas.gif')">
               <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-center text-shadow-1">
                   <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Metas</h2><br>
            <p class="text-center"><button type="button" class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target="#Popover3">Mostrar</button></p>
          </div>
              
          </div>
       
      </div>

    </div>
          </div>
    
  
          
          
   <!-- Modal Objetivo Card -->
  <div class="modal fade" id="Popover1" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable text-center">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">Accion Por El Clima</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
         El cambio climático está afectando a todos los países de todos los continentes. Está alterando las economías nacionales y 
         afectando a distintas vidas. Los sistemas meteorológicos están cambiando, los niveles del mar están subiendo y los fenómenos
         meteorológicos son cada vez más extremos. Es necesario tomar medidas urgentes para abordar tanto la pandemia como la emergencia
         climática con el fin de salvar vidas y medios de subsistencia.
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
          
        <!-- Modal ¿Por que? card -->
  <div class="modal fade" id="Popover2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable text-center">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">¿Por Qué?</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          Ante la inminencia de un cataclismo climático, el ritmo y la escala 
          de los actuales planes de acción climática son 
          totalmente insuficientes para abordar con eficacia 
          el cambio climático. Los fenómenos meteorológicos extremos, 
          cada vez más  frecuentes e intensos, afectan ya a todas las
           regiones de la Tierra. El aumento de las temperaturas agravará 
           aún más estos peligros, lo que plantea graves riesgos.
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
        
     <!-- Modal Metas Card -->
  <div class="modal fade" id="Popover3" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">Algunas de las metas son:</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <ul class="list-unstyled">
              <ul>
                <li>Fortalecer la resiliencia y la capacidad de adaptación a los riesgos relacionados con el clima</li>
                <br>
                <li>Incorporar medidas relativas al cambio climático en las políticas, estrategias y planes nacionales.</li>
                <br>
                <li>Mejorar la educación, la sensibilización y la capacidad humana e institucional respecto de la mitigación 
                  del cambio climático, la adaptación a él, la reducción de sus efectos y la alerta temprana.</li>
              </ul>
            </li>
          </ul>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn  text-dark btn-secondary" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
          
      </section>
      
      <!-- Section 3 -->
      <section class="section background-white">
        <div class="full-width text-center">
          <img class="center margin-bottom-30" style="margin-top: -20px;" src="img/bio.png" alt="">
          <div class="line">
            <h2 class="headline text-thin text-s-size-30">Inspira <span class="text-primary">a cuidar</span> aprende a conservar.</h2>
            <p class="text-size-20 text-s-size-16 text-thin">"¿Sabías que todos vivimos en un lugar especial llamado la Tierra? 
                La Tierra es como nuestra casa, y necesitamos cuidarla. Pero a veces, hacemos cosas que pueden lastimarla, 
                como tirar basura en lugares incorrectos o usar mucha energía que viene de cosas que contaminan el aire.
Afortunadamente, podemos hacer cosas para ayudar a la Tierra y hacerla más feliz. Podemos plantar árboles, 
reciclar nuestras botellas y papeles, apagar las luces cuando no las necesitamos y ahorrar agua. 
También, podemos aprender sobre los animales y plantas y cómo vivir en armonía con ellos.</p>
           </div>  
        </div>  
      </section>
      <hr class="break margin-top-bottom-0">
      
    </main>

                    
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
    <script type="text/javascript" src="../JS/responsee.js"></script>
    <script type="text/javascript" src="o../JS/owl.carousel.js"></script>
    <script type="text/javascript" src="../JS/template-scripts.js"></script>   
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
    AOS.init();
  </script> 
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
   </body>
</html>