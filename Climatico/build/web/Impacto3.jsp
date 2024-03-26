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
        <title>Impacto Global</title>
    <link  rel="stylesheet" href="css/components.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/responsee.css">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
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
               
        
         <!-- Introduccion Contenido -->
         
        <section >
            
           <div class="container-fluid"  style="text-align:center;">
               <div class=" container-sm text-white rounded-5 background-dark">
                    <h2 class="headline text-thin text-s-size-30">¿Existe Una Solución?</h2>
               </div>
           
            <br> <br>
            <div class="container-fluid" style="text-align:justify;">
                <div class="row">
                    <div class="col-8 center">
                        <h2 class="headline text-thin text-s-size-30 text-center">Nos enfrentamos a un gran reto</h2>
               

                        <p class="text-size-20 text-s-size-16 text-thin text-center">
                           Muchas soluciones al cambio climático pueden aportar beneficios económicos al tiempo que mejoran nuestras vidas y 
                           protegen el medio ambiente. También contamos con marcos y acuerdos globales para guiar el progreso, como los Objetivos de 
                           Desarrollo Sostenible, la Convención Marco de las Naciones Unidas sobre el Cambio Climático y el Acuerdo de París. Hay tres 
                           amplias categorías de acción: reducir las emisiones, adaptarse a los impactos climáticos financiar los ajustes necesarios. 
                           El cambio de los sistemas energéticos de los combustibles fósiles a las energías renovables, como la solar o la eólica, 
                           reducirá las emisiones que provocan el cambio climático. Pero tenemos que empezar ya mismo. Aunque una coalición cada vez más 
                           numerosa de países se compromete a alcanzar las emisiones cero para 2050, alrededor de la mitad de los recortes en las emisiones 
                           deben producirse antes de 2030 para mantener el calentamiento por debajo de 1,5 °C. Este logro requiere grandes reducciones en el 
                           uso de carbón, petróleo y gas.              
                        </p>

                        </div>
                     </div>
            
                </div>
            <hr>
            
            <h4 class="headline text-thin text-s-size-30 text-center">Accion Por El Clima</h4>

                        <div class="row">
                            <div class="col-8 center" >
                                <img src="Imagenes/Accion Por El Clima.gif" class="img-fluid">
                            </div>>
                             </div>
            
            <div class = "container-fluid">
                     <br><br><br>   
                <div class="row">
                    <div class="col-8 center" >
                       <p class="text-size-20 text-s-size-16 text-thin text-center">
                            No hay país en el mundo que no haya experimentado los dramáticos efectos del cambio climático. Las emisiones de gases de 
                            efecto invernadero continúan aumentando y hoy son un 50 % superior al nivel de 1990. Además, el calentamiento global está 
                            provocando cambios permanentes en el sistema climático, cuyas consecuencias pueden ser irreversibles si no se toman medidas 
                            urgentes ahora. Las pérdidas anuales promedio causadas solo por catástrofes relacionadas al clima alcanzan los cientos de 
                            miles de millones de dólares, sin mencionar el impacto humano de las catástrofes geofísicas, el 91 % de las cuales son 
                            relacionadas al clima, y que entre 1998 y 2017 tomaron la vida de 1,3 millones de personas y dejaron a 4.400 millones heridas.
                            El objetivo busca movilizar USD 100.000 millones anualmente hasta 2020, con el fin de abordar las necesidades de los países en
                            desarrollo en cuanto a adaptación al cambio climático e inversión en el desarrollo bajo en carbono.
                        </p> 
                        
                        
                        <p>
                            Recuperado de: 
                            Objetivos de Desarrollo Sostenible. (s/f-b). UNDP. Recuperado el 19 de noviembre de 2023, de <p><a target="_blank" class="link-opacity-75" href="https://www.undp.org/es/sustainable-development-goals/accion-por-el-clima">https://www.undp.org/es/sustainable-development-goals/accion-por-el-clima</a></p>


                        </p>
                        
                    </div>
                        
                </div>
                        
            </div>
                
                
            </div>
         
        </section>
         
         <br><br><br><br>
         <div class=" container-fluid text-white text-center rounded-5 background-dark">
                    <h2 class="headline text-thin text-s-size-30">Evaluación Del Modulo</h2>
               </div>

         <br><br>
         
         <section style="align-content: left">
              <div class="container">
            <div class="row">
            <div class="col">
                <form method= "post" id="cuestionario2" action="Actividades2">
                    <h6 class="headline text-thin text-s-size-30">1.-La tierra naturalmente pasa por fases de calentamiento</h6>
                    <ol type="A">
                        <li><input type="radio" name="pregunta1" id="p11"> Verdadero</li>
                        <li><input type="radio" name="pregunta1" id="p12"> Falso</li>

                  
                    </ol>
                    <h6 class="headline text-thin text-s-size-30">2.-¿Cuales son las causas antropogénicas del calentamiento global?</h6>
                    <ol type="A">
                        <li><input type="radio" name="pregunta2" id="p21"> El aumento en las emisiones de gases de efecto invernadero</li>
                        <li><input type="radio" name="pregunta2" id="p23"> La intensidad del sol y las erupciones volcánicas</li>
                        <li><input type="radio" name="pregunta2" id="p22"> Derretimiento de los polos</li>
                    </ol>
                     <h6 class="headline text-thin text-s-size-30">3.-¿Cómo afecta el aumento de temperatura?</h6>
                    <ol type="A">
                        <li><input type="radio" name="pregunta3" id="p31"> Crea tormentas destructivas</li>
                        <li><input type="radio" name="pregunta3" id="p33"> Produce más olas de calor y días más calurosos</li>
                        <li><input type="radio" name="pregunta3" id="p32"> Hacer que los volcanes entren en erupción</li>

                    </ol>
                    <h6 class="headline text-thin text-s-size-30">4.-El cambio de los sistemas energéticos de los combustibles fósiles a las energías renovables, como la solar o la eólica, reducirá las emisiones que provocan el cambio climático</h6>
                    <ol type="A">
                        <li><input type="radio" name="pregunta4" id="p41"> Falso</li>
                        <li><input type="radio" name="pregunta4" id="p42"> Verdadero</li>
             
                    </ol>
                    <h6 class="headline text-thin text-s-size-30">5.-¿Qué es accion por el clima?</h6>
                    <ol type="A">
                        <li><input type="radio" name="pregunta5" id="p55"> Una campaña politica de propaganda</li>
                        <li><input type="radio" name="pregunta5" id="p51"> Un objetivo para buscar una vida digna a futuro</li>
                        <li><input type="radio" name="pregunta5" id="p52"> Un programa enfoncado en la reduccion de las consecuencias e impacto del calentamiento global</li>
    
                    </ol>
                    <hr />
                    <button type="button" class="btn btn-primary" onclick="resultado()">RESULTADO</button>
                    <input type="hidden" name="nota2" id="nota2" value="" />
                    <hr />
                </form>
            </div>
        </div>
    </div>
             
             
         </section>

     
         
          <!-- FOOTER -->
    <footer>
        
         
           <nav aria-label="...">
            <ul class="pagination justify-content-center">
              <li class="page-item">
                <a class="page-link" href="Impacto2.jsp">Previous</a>
              </li>
              <li class="page-item"><a class="page-link" href="ImpactoGlobal.jsp">1</a></li>
              <li class="page-item" aria-current="page">
                <a class="page-link" href="Impacto2.jsp">2</a>
              </li>
              <li class="page-item active"><a class="page-link" href="#">3</a></li>
              <li class="page-item">
                <a class="page-link disabled" href="EnAccion.jsp">Next</a>
              </li>
            </ul>
            </nav> 
       
        
     
        
   
      

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
        
          
          <script src="js/Quizz_2.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/js/bootstrap.min.js"
        integrity="sha384-7aThvCh9TypR7fIc2HV4O/nFMVCBwyIUKL8XCtKE+8xgCgl/PQGuFsvShjr74PBp"
        crossorigin="anonymous"></script>  
        

               <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script>
            AOS.init();
        </script> 
    </body>
</html>