
<%@ page contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>EduAmbiental</title>
    <link rel="stylesheet" href="css/components.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/responsee.css">
    <link rel="stylesheet" href="owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="owl-carousel/owl.theme.css">
    <!-- CUSTOM STYLE -->
    <link rel="stylesheet" href="css/template-style.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>    
    <script type="text/javascript" src="js/validation.js"></script> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    
  </head>  
  
  <body class="size-1140">
 
      <header role="banner"> 

 <nav class="background-white background-primary-hightlight">
        <div class="line">
          <div class="s-12 l-2">
            <a href="Principal.jsp" class="logo"><img src="Imagenes/Logo.jpg" alt=""></a>
          </div>
          <div class="top-nav s-12 l-10">
            <p class="nav-text"></p>
            <ul class="right chevron">
              <li><a href="Principal.jsp">Inicio</a></li>
              <li><a data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">Acceso</a></li>
              </ul>
             <!-- Menu Desplegable -->
      
                     <div class="offcanvas offcanvas-end" style="background-color:#dcfce3" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
             
                             
                            <div class="offcanvas-header">
                              <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Accede A La Plataforma</h5>
                              <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                            </div>
                            <div class="offcanvas-body">
                              <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                                <li class="nav-item">
                                  <a class="nav-link active" aria-current="page" href="Login.jsp">Iniciar Sesion</a>
                                </li>
                                <li class="nav-item">
                                  <a class="nav-link" href="RegistroUsuario.jsp">Registrarse</a>
                                </li>
                                <div clas="container">
                                    <img src="Imagenes/SubMenuImage.png" class="img-fluid" alt="...">
                                </div>
                              </ul>              
                            </div> 
                     

                         
                            
                    </div>
         
                
              </li>
              </ul>
          </div>
        </div>
      </nav>

        </header>

   
    
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
          
          <div data-aos="fade-up" class="container">
            <div class="row">
                <div class="col-md-3">
                    <img src="Imagenes/About-Us.png" class="img-fluid" alt="...">
                </div>
             <div class="col-8">
               <div class="card text-center" style="border-color: #2abf13;">
                 <div class="card-header">
                   <p class="h3">¿Quiénes somos?</p>
                 </div>
                 <div class="card-body">
                   <h5 class="card-title">Somos un grupo de estudiantes</h5>
                   <p class="card-text">
                     preocupados por el impacto negativo del cambio climático en los últimos años de forma global, por lo que mediante esta 
                     plataforma web deseamos brindar información para ayudar a detener los efectos de este, así como pequeñas acciones que podemos 
                     emprender desde nuestra casa y por qué no, en nuestra comunidad, es por ello que basado en el objetivo número 13 
                     "Acción Por El Clima", de las ODS, nos hemos propuesto contribuir a la causa con este sitio web.
                   </p>
                 </div>
               </div>
             </div>
           </div>
         </div>
      </section>
      
      <!-- Section 2 -->
      <section class="section background-primary text-center">
        <div  data-aos="zoom-in-down" class="line">
          <div class="s-12 m-10 l-8 center">
            <h2 class="headline text-thin text-s-size-30">Unidos, tenemos el poder de cambiar el mundo.</h2>
            <p class="text-size-20">"Pequeñas acciones, grandes cambios. ¡Cuidemos nuestro hogar, la Tierra!"</p>
          </div>
        </div>  
      </section>
      
      <!-- Section 3 -->
      <section class="section background-white">
          <div data-aos="fade-up"  class="container">
  
                <div class="row">
                  <div class="col-md-3">
                    <h1 class="text-center"></h1>  
                    <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                      <div class="carousel-inner">
                        <div class="carousel-item active">
                          <img src="Imagenes/ODS.png"  class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                          <img src="Imagenes/ODS 3.webp" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                          <img src="Imagenes/ODS_Gif.gif" class="d-block w-100" alt="...">
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-8">
                    <div class="card text-center" style="border-color: #2abf13;">
                      <div class="card-header">
                        <p class="h3">Objetivos ODS</p>
                      </div>
                      <div class="card-body">
                        <h5 class="card-title">"Los Objetivos de Desarrollo Sostenible (ODS)</h5>
                        <p class="card-text">
                          también conocidos como Objetivos Globales, fueron adoptados por las Naciones 
                          Unidas en 2015 como un llamamiento universal para poner fin a la pobreza, proteger el planeta y garantizar que para el 2030 
                          todas las personas disfruten de paz y prosperidad." 
                          <br>
                          "Los ODS están diseñados para acabar con la pobreza, el hambre, el sida y la discriminación contra mujeres y niñas.
                          La creatividad, el conocimiento, la tecnología y los recursos financieros de toda la sociedad son necesarios para alcanzar los ODS en todos los contextos."
                        </p>
                      </div>
                      <div class="card-footer text-muted">
                        Objetivos de Desarrollo Sostenible. (s/f). UNDP. Recuperado el 3 de noviembre de 2023, de https://www.undp.org/es/sustainable-development-goals
                      </div>
                    </div>

                  </div>
                </div>
</div>
      </section>
      <hr class="break margin-top-bottom-0">
      
      <!-- Section 4 --> 
      <section class="section background-white">
            <div data-aos="fade-up"  class="container">
  
                    <div class="row">
                      <div class="col-md-3">
                        <br>
                        <img src="Imagenes/Accion por el clima.png" class="img-thumbnail" alt="...">
                      </div>
                      <div class="col-8">
                        <div class="card text-center" style="border-color: #2abf13;">
                          <div class="card-header">
                            <p class="h3">Accion Por El Clima</p>
                          </div>
                          <div class="card-body">
                            <p class="card-text">
                              El ODS 13 se centra en la necesidad de adoptar medidas urgentes para acabar con el cambio climático que afecta a todos 
                              los países del mundo. Según relata la ONU, los científicos dedicados a las cuestiones climáticas ya han demostrado que las personas
                               somos responsables del calentamiento global de los últimos 200 años. Las actividades humanas, tales como  
                               la quema de combustibles fósiles, la deforestación, la pérdida de bosques o las actividades agrícolas y 
                               ganaderas que usan fertilizantes y otros productos químicos, han sido el principal motor del cambio climático. 
                            </p>
                          </div>
                        </div>

                      </div>
                    </div>
                  </div>
                  
      </section>
      
    </main>
    
    <!-- FOOTER -->
    <footer>
      <!-- Social -->
      <div  class="background-primary padding text-center">
          <div data-aos="zoom-in-down">
              <a href="RegistroUsuario.jsp" class="btn btn-success">Unete A La Acción</a> 
          </div>
       
                                                                              
      </div>
      
      
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
    <script type="text/javascript" src="js/responsee.js"></script>
    <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
    <script type="text/javascript" src="js/template-scripts.js"></script>   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
        AOS.init();
    </script>
   </body>
</html>