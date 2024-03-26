
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
        <title>Impacto Global</title>
    <link rel="stylesheet" href="css/portafolio.css">
    <link rel="stylesheet" href="css/components.css">
    <link rel="stylesheet" href="css/responsee.css">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="css/template-style.css">

    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />     
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

  <section>
    <div class="container-fluid background-white">
                                        <div class="text-center"> 
          
            <h1 class="headline text-thin text-s-size-20"><span class="text-dark">Impacto Global</span></h1>

                </div>  
                                         
                </div>
  </section>
               
  <br> <br>

        <section >
            
           <div class="container-fluid"  style="text-align:center;">
               <div class=" container-sm text-white rounded-5 background-dark">
                    <h2 class="headline text-thin text-s-size-30">Consecuencias</h2>
               </div>
           
            </div>
            
            <div class="container-fluid" style="text-align:justify;">
                <div class="row">
                    <div class="col-8 center">
                        <h2 class="headline text-thin text-s-size-30 text-center">�Cu�les son las  <span class="text-primary"> consecuencias?</span></h2>
                        <p class="text-size-20 text-s-size-16 text-thin text-center">
                            El cambio clim�tico afecta a todas las regiones del mundo. Los casquetes polares se est�n fundiendo y el nivel del mar est� subiendo.
                            En algunas regiones, los fen�menos meteorol�gicos extremos y las inundaciones son cada vez m�s frecuentes, mientras que en otras 
                            se registran olas de calor y sequ�as. Hemos de actuar por el clima ahora, o estos efectos no har�n sino intensificarse.
                            El cambio clim�tico es una amenaza muy grave, y sus consecuencias afectan a muchos y muy diversos aspectos de nuestra vida. 
                  
                        </p>
                        <div class="row">
                            <div class="col-8 center" >
                                <img src="Imagenes/Consecuencias.jpg" class="img-fluid">
                            </div>>
                             </div>
                       
                        </div>
                     </div>
                <br><br><br><hr/>
                <div data-aos="zoom-in">
                   <h4 class="headline text-thin text-s-size-30 text-center">Principales Consecuencias</h4> 
                </div>
                 
            
                </div>
         
        </section>
  
  
   <section class="page-section portfolio" id="portfolio">
            <div class="container">
                <!-- Portfolio Grid Items-->
                <div  class="row justify-content-center">
                    <!-- Portfolio Item 1-->
                    <div data-aos="fade-right" class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal1">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="Imagenes/Temperatura.jpg" alt="..." />
                        </div>
                    </div>
                    <!-- Portfolio Item 2-->
                    <div  data-aos="fade-right"class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal2">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="Imagenes/Tormentas.jpg" alt="..." />
                        </div>
                    </div>
                    <!--  Portfolio Item 3-->
                    <div data-aos="fade-right" class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal3">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="Imagenes/Sequia.jpg" alt="..." />
                        </div>
                    </div>
                    <!-- Portfolio Item 4-->
                    <div  data-aos="fade-left" class="col-md-6 col-lg-4 mb-5 mb-lg-0">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal4">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="Imagenes/Inundacion.jpeg" alt="..." />
                        </div>
                    </div>
                    <!-- Portfolio Item 5-->
                    <div  data-aos="fade-left" class="col-md-6 col-lg-4 mb-5 mb-md-0">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal5">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="Imagenes/Extincion.jpg" alt="..." />
                        </div>
                    </div>
                    <!-- Portfolio Item 6-->
                    <div data-aos="fade-left" class="col-md-6 col-lg-4">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal6">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="Imagenes/Alimentos.jpg" alt="..." />
                        </div>
                    </div>
                   
                </div>
                
                
                
            </div>
       <br><br>
       <div class="container">
                <!-- Portfolio Grid Items-->
                <div class="row justify-content-center">
                    <!-- Portfolio Item 7-->
                    <div data-aos="fade-right" class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal7">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="Imagenes/Salud.jpg" alt="..." />
                        </div>
                    </div>
                    <!-- Portfolio Item 8-->
                    <div data-aos="fade-right" class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal8">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="Imagenes/Pobreza.jpg" alt="..." />
                        </div>
                    </div>
                    <!-- Portfolio Item 9-->
                    <div data-aos="fade-right" class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal9">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="Imagenes/Contaminacion.jpg" alt="..." />
                        </div>
                    </div>
                               
                </div>
                
                
                
            </div>
            
        </section>
  
  
  


          

         
          <!-- FOOTER -->
    <footer>
        
         
           <nav aria-label="...">
            <ul class="pagination justify-content-center">
              <li class="page-item">
                <a class="page-link" href="ImpactoGlobal.jsp">Previous</a>
              </li>
              <li class="page-item"><a class="page-link" href="ImpactoGlobal.jsp">1</a></li>
              <li class="page-item active" aria-current="page">
                <a class="page-link" href="#">2</a>
              </li>
              <li class="page-item"><a class="page-link" href="Impacto3.jsp">3</a></li>
              <li class="page-item">
                <a class="page-link" href="Impacto3.jsp">Next</a>
              </li>
            </ul>
            </nav> 
       
        
     
        
      <!-- Social -->
      <div class="background-primary padding text-center">
        <a href="/"><i class="icon-facebook_circle icon2x text-white"></i></a> 
        <a href="/"><i class="icon-twitter_circle icon2x text-white"></i></a>
        <a href="/"><i class="icon-google_plus_circle icon2x text-white"></i></a>
        <a href="/"><i class="icon-instagram_circle icon2x text-white"></i></a>                                                                        
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
        
          
          
          
          
          
          
    <!-- Portfolio Modals-->
        <!-- Portfolio Modal 1-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" aria-labelledby="portfolioModal1" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <div class="container-fluid"  style="text-align:center;">
                                        <div class=" container-sm text-white rounded-5 background-dark">
                                             <h3 class="headline text-thin text-s-size-30">Aumento En Las Temperaturas</h3>
                                        </div>

                                     </div>
                                    <!-- Portfolio Modal - Image-->
                                    <div class="ratio ratio-16x9">
                                        <video preload="auto" autoplay muted> 
                                            <source src="Recursos/Incendio.mp4" type="video/mp4">
                                            Your browser does not support the video tag.</video>
                                    </div> 
                                    <!-- Portfolio Modal - Text-->
                                    <br><br>
                                    <p class="text-size-20 text-s-size-16 text-thin text-center">En la �ltima d�cada, del 2011 al 2020, se ha registrado el mayor calentamiento hasta la fecha. Desde los a�os 
                                        80, cada d�cada ha sido m�s c�lida que la anterior. En casi todas las zonas se han producido m�s olas de calor y d�as
                                        m�s calurosos. La elevaci�n de las temperaturas provoca un aumento en las enfermedades relacionadas con el calor y 
                                        hace que trabajar en exteriores sea m�s dif�cil. Se producen incendios incontrolados con mayor facilidad y se extienden
                                        m�s r�pidamente cuando el ambiente es m�s c�lido. Las temperaturas del �rtico se han elevado al menos el doble de 
                                        r�pido que la media mundial.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio Modal 2-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" aria-labelledby="portfolioModa2" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <div class="container-fluid"  style="text-align:center;">
                                        <div class=" container-sm text-white rounded-5 background-dark">
                                             <h3 class="headline text-thin text-s-size-30">Tormentas Destructivas</h3>
                                        </div>

                                     </div>
                                    <!-- Portfolio Modal - Image-->
                                    <div class="ratio ratio-16x9">
                                        <video preload="auto" autoplay muted> 
                                            <source src="Recursos/Tormentas.mp4" type="video/mp4">
                                            Your browser does not support the video tag.</video>
                                    </div> 
                                    <!-- Portfolio Modal - Text-->
                                    <br><br>
                                    <p class="text-size-20 text-s-size-16 text-thin text-center">Las tormentas destructivas se han vuelto m�s intensas y 
                                        m�s frecuentes en muchas regiones. A medida que se elevan las temperaturas se evapora mayor humedad, lo que causa 
                                        inundaciones y precipitaciones extremas, provocando m�s tormentas destructivas. El calentamiento del oc�ano tambi�n 
                                        afecta a la frecuencia y magnitud de las tormentas tropicales. Los ciclones, huracanes y tifones se alimentan de 
                                        las aguas templadas de la superficie del oc�ano. Estas tormentas destruyen a menudo hogares y comunidades enteras, 
                                        lo que provoca p�rdidas ingentes en la econom�a y en vidas humanas.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio Modal 3-->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" aria-labelledby="portfolioModa3" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <div class="container-fluid"  style="text-align:center;">
                                        <div class=" container-sm text-white rounded-5 background-dark">
                                             <h3 class="headline text-thin text-s-size-30">Sequ�as</h3>
                                        </div>

                                     </div>
                                    <!-- Portfolio Modal - Image-->
                                    <div class="ratio ratio-16x9">
                                        <video preload="auto" autoplay muted> 
                                            <source src="Recursos/Sequia.mp4" type="video/mp4">
                                            Your browser does not support the video tag.</video>
                                    </div> 
                                    <!-- Portfolio Modal - Text-->
                                    <br><br>
                                    <p class="text-size-20 text-s-size-16 text-thin text-center">El cambio clim�tico est� modificando la disponibilidad de agua, 
                                        al hacerla m�s escasa en m�s regiones. El calentamiento global genera escasez de agua en regiones ya de por s� secas,
                                        y est� incrementando el riesgo de sequ�as agr�colas que afectan a cultivos y sequ�as ecol�gicas que aumentan la
                                        vulnerabilidad de los ecosistemas. Las sequ�as tambi�n pueden provocar destructivas tormentas de arena y polvo capaces 
                                        de desplazar miles de millones de toneladas de arena de un continente a otro. 
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio Modal 4-->
        <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" aria-labelledby="portfolioModa4" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <div class="container-fluid"  style="text-align:center;">
                                        <div class=" container-sm text-white rounded-5 background-dark">
                                             <h3 class="headline text-thin text-s-size-30">Aumento del nivel del mar</h3>
                                        </div>

                                     </div>
                                    <!-- Portfolio Modal - Image-->
                                    <div class="ratio ratio-16x9">
                                        <video preload="auto" autoplay muted> 
                                            <source src="Recursos/Inundacion.mp4" type="video/mp4">
                                            Your browser does not support the video tag.</video>
                                    </div> 
                                    <!-- Portfolio Modal - Text-->
                                    <br><br>
                                    <p class="text-size-20 text-s-size-16 text-thin text-center">El oc�ano absorbe la mayor parte del calor generado por el 
                                        calentamiento global. El ritmo al que se ha elevado el calentamiento del oc�ano ha aumentado considerablemente 
                                        durante las �ltimas dos d�cadas a todas las profundidades. A medida que se calienta el oc�ano, su volumen aumenta 
                                        porque el agua se expande. El deshielo de las placas de hielo y los icebergs hace que se eleve el nivel del mar 
                                        amenazando a las comunidades litorales e insulares. 
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio Modal 5-->
        <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" aria-labelledby="portfolioModal5" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <div class="container-fluid"  style="text-align:center;">
                                        <div class=" container-sm text-white rounded-5 background-dark">
                                             <h3 class="headline text-thin text-s-size-30">Extinci�n De Especies</h3>
                                        </div>

                                     </div>
                                    <!-- Portfolio Modal - Image-->
                                    <div class="ratio ratio-16x9">
                                        <video preload="auto" autoplay muted> 
                                            <source src="Recursos/Animales.mp4" type="video/mp4">
                                            Your browser does not support the video tag.</video>
                                    </div> 
                                    <!-- Portfolio Modal - Text-->
                                    <br><br>
                                    <p class="text-size-20 text-s-size-16 text-thin text-center">El cambio clim�tico pone en riesgo la supervivencia de las 
                                        especies terrestres y oce�nicas. Estos riesgos aumentan a medida que ascienden las temperaturas. Debido a la
                                        potencia del cambio clim�tico exacerbado, en el mundo se extinguen especies a un ritmo 1000 veces mayor que en 
                                        cualquier otra �poca de la que se tenga constancia en la historia humana. Un mill�n de especies est�n en riesgo 
                                        de extinguirse en las pr�ximas d�cadas.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio Modal 6-->
        <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" aria-labelledby="portfolioModal6" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <div class="container-fluid"  style="text-align:center;">
                                        <div class=" container-sm text-white rounded-5 background-dark">
                                             <h3 class="headline text-thin text-s-size-30">Escasez De Alimentos</h3>
                                        </div>

                                     </div>
                                    <!-- Portfolio Modal - Image-->
                                    <div class="ratio ratio-16x9">
                                        <video preload="auto" autoplay muted> 
                                            <source src="Recursos/Cultivo.mp4" type="video/mp4">
                                            Your browser does not support the video tag.</video>
                                    </div> 
                                    <!-- Portfolio Modal - Text-->
                                    <br><br>
                                    <p class="text-size-20 text-s-size-16 text-thin text-center">Los cambios en el clima y el aumento de condiciones 
                                        meteorol�gicas extremas son algunos de los motivos que provocan un aumento global en la desnutrici�n en las poblaciones 
                                        m�s pobres. Los recursos pesqueros, los cultivos y el ganado pueden desaparecer o volverse menos productivos. Debido a 
                                        una continua acidificaci�n oce�nica, los recursos marinos que dan alimento a miles de millones de personas se encuentran
                                        en riesgo. Los cambios en las capas de nieve y hielo de los casquetes polares han alterado el suministro de alimentos 
                                        generados por la ganader�a, la caza y la pesca. Un calor extremo puede hacer disminuir el agua y los pastizales 
                                        destinados a la ganader�a, provocando una disminuci�n de la producci�n agr�cola y afectando al ganado. 
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
       <div class="portfolio-modal modal fade" id="portfolioModal7" tabindex="-1" aria-labelledby="portfolioModal7" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <div class="container-fluid"  style="text-align:center;">
                                        <div class=" container-sm text-white rounded-5 background-dark">
                                             <h3 class="headline text-thin text-s-size-30">Riesgos Para La Salud</h3>
                                        </div>

                                     </div>
                                    <!-- Portfolio Modal - Image-->
                                    <div class="ratio ratio-16x9">
                                        <video preload="auto" autoplay muted> 
                                            <source src="Recursos/Salud.mp4" type="video/mp4">
                                            Your browser does not support the video tag.</video>
                                    </div> 
                                    <!-- Portfolio Modal - Text-->
                                    <br><br>
                                    <p class="text-size-20 text-s-size-16 text-thin text-center">El cambio clim�tico supone la mayor amenaza �nica para la 
                                        salud de la humanidad. El cambio clim�tico ya da�a de hecho la salud, a trav�s de la contaminaci�n, las enfermedades, 
                                        los fen�menos meteorol�gicos extremos, los desplazamientos forzados, las presiones en la salud mental, as� como un 
                                        aumento del hambre y la desnutrici�n en lugares donde las personas no pueden producir o encontrar alimentos suficientes. 
                                        Cada a�o, los factores medioambientales acaban con la vida de cerca de 13 millones de personas. 
                                    </p>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="portfolio-modal modal fade" id="portfolioModal8" tabindex="-1" aria-labelledby="portfolioModal8" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <div class="container-fluid"  style="text-align:center;">
                                        <div class=" container-sm text-white rounded-5 background-dark">
                                             <h3 class="headline text-thin text-s-size-30">Pobreza Y Desplazamiento</h3>
                                        </div>

                                     </div>
                                    <!-- Portfolio Modal - Image-->
                                    <div class="ratio ratio-16x9">
                                        <video preload="auto" autoplay muted> 
                                            <source src="Recursos/Refugiados.mp4" type="video/mp4">
                                            Your browser does not support the video tag.</video>
                                    </div> 
                                    <!-- Portfolio Modal - Text-->
                                    <br><br>
                                    <p class="text-size-20 text-s-size-16 text-thin text-center">El cambio clim�tico aumenta los factores que llevan y mantienen 
                                        a la gente en la pobreza. Las inundaciones pueden arrasar barrios marginales, destruyendo hogares y comunidades. 
                                        El calor dificulta la ejecuci�n de trabajos en el exterior. La escasez de agua puede afectar a los cultivos. 
                                        Durante la �ltima d�cada (2010-2019), los sucesos relacionados con el clima desplazaron a un total aproximado 
                                        de 23,1 millones de personas de media al a�o, aumentando sus probabilidades de caer en la pobreza. Muchos refugiados 
                                        provienen de pa�ses que son m�s vulnerables y menos preparados para adaptarse a los efectos del cambio clim�tico.
                                    </p>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="portfolio-modal modal fade" id="portfolioModal9" tabindex="-1" aria-labelledby="portfolioModal9" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <div class="container-fluid"  style="text-align:center;">
                                        <div class=" container-sm text-white rounded-5 background-dark">
                                             <h3 class="headline text-thin text-s-size-30">Contaminaci�n Y Acidificaci�n Del Agua</h3>
                                        </div>

                                     </div>
                                    <!-- Portfolio Modal - Image-->
                                    <div class="ratio ratio-16x9">
                                        <video preload="auto" autoplay muted> 
                                            <source src="Recursos/Oceano.mp4" type="video/mp4">
                                            Your browser does not support the video tag.</video>
                                    </div> 
                                    <!-- Portfolio Modal - Text-->
                                    <br><br>
                                    <p class="text-size-20 text-s-size-16 text-thin text-center">La acidificaci�n del oc�ano es el fen�meno que hace que los 
                                        mares se vuelvan m�s �cidos como consecuencia de la absorci�n continuada del carbono presente en la atm�sfera, que 
                                        est� aumentando debido a las emisiones de origen humano. En los �ltimos 200 a�os, los oc�anos han engullido alrededor 
                                        de un 30 % de esas emisiones totales, y, hoy en d�a, las aguas marinas siguen absorbiendo en torno al 25 % de estas 
                                        cada a�o. La acidificaci�n de los oc�anos ocurre cuando el agua marina reacciona con el CO2 que absorbe 
                                        de la atm�sfera, lo que crea m�s productos qu�micos que favorecen la acidificaci�n y reducen la presencia de
                                        importantes minerales, como el carbonato de calcio, que los organismos marinos necesitan para sobrevivir.
                                    </p>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
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