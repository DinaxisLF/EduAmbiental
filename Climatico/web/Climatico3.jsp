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
        <title>Cambio Climatico</title>
    <link  rel="stylesheet" href="css/components.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/responsee.css">
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
          
            <h1 class="headline text-thin text-s-size-20"><span class="text-dark">Cambio Climatico</span></h1>

                </div>  
                                         
                </div>
</section>
               
     
                                     <br> <br>
               
        
         <!-- Introduccion Contenido -->
         
        <section >
            
           <div class="container-fluid"  style="text-align:center;">
               <div class=" container-sm text-white rounded-5 background-dark">
                    <h2 class="headline text-thin text-s-size-30">¿Cómo Cambia El Clima? </h2>
               </div>
           
            <br> <br>
            <div class="container-fluid" style="text-align:justify;">
                <div class="row">
                    <div class="col-8 center">
                        <h2 class="headline text-thin text-s-size-30 text-center">¿Cómo se mide <span class="text-primary"> esto?</span></h2>
                        <p class="text-size-20 text-s-size-16 text-thin text-center">
                               Los satélites en la órbita terrestre, las estaciones meteorológicas remotas y las boyas oceánicas se utilizan para 
                               monitorear el estado del tiempo y el clima actual, pero son los datos de <a href="#" class="link-success" target="_blank">paleoclimatología</a> de fuentes naturales 
                               como núcleos de hielo, anillos de árboles, corales y sedimentos de océanos y lagos que han permitido a los 
                               científicos extender los registros climáticos de la Tierra a millones de años. Estos registros brindan una visión 
                               completa de los cambios a largo plazo en la atmósfera terrestre, los océanos, las superficies terrestres y la 
                               criosfera (sistemas de agua congelada). Luego, los científicos incorporan estos datos a modelos climáticos 
                               sofisticados que pueden predecir las tendencias climáticas futuras con gran precisión.
                               
                               <br><br><br>
                               Vale la pena señalar que, si bien el cambio climático y el calentamiento global a menudo se usan indistintamente, 
                               el calentamiento global (el reciente aumento de la temperatura media global cerca de la superficie de la tierra) 
                               es sólo un aspecto del cambio climático.
                                
                        </p>
                     </div>
            
                </div>
                <div class="row">
                    <div class="col-8 center" >
                        <img src="Imagenes/Climatico 3.jfif" class="img-fluid">
                    </div>>
                     </div>
                </div>
                
            </div>
         
        </section>
         
         
         <br><br><br><br>
          <div class=" container-fluid text-white text-center rounded-5 background-dark">
                    <h2 class="headline text-thin text-s-size-30">Evaluación Del Modulo</h2>
               </div>

         <br><br>
         
         <div class="container">
            <div class="row">
            <div class="col">
                <form id="cuestionario" method="post" action="Actividades">
                    <h6 class="headline text-thin text-s-size-30">1.-¿Qué es el cambio climático?</h6>
                    <ol type="A">
                        <li><input type="radio" name="pregunta1" id="p11"> Cambios a largo plazo en los patrones climáticos de la Tierra. </li>
                        <li><input type="radio" name="pregunta1" id="p12"> Efecto causado por la temperatura del sol y el mar</li>
                        <li><input type="radio" name="pregunta1" id="p13"> La liberacion de gases a la atmosfera por parte de los humanos</li>
                  
                    </ol>
                    <h6 class="headline text-thin text-s-size-30">2.-Causas naturales del cambio climatico:</h6>
                    <ol type="A">
                        <li><input type="radio" name="pregunta2" id="p21"> El acercamiento del sol a la tierra</li>
                        <li><input type="radio" name="pregunta2" id="p23"> Variaciones en la actividad solar y erupciones volcánicas grandes</li>
                        <li><input type="radio" name="pregunta2" id="p22"> Derretimiento de los polos</li>
                    </ol>
                     <h6 class="headline text-thin text-s-size-30">3.-¿Qué ha causado una mayor emision de gases a la atmósfera?</h6>
                    <ol type="A">
                        <li><input type="radio" name="pregunta3" id="p31"> La actividad humana ha sido la responsable de emitir una mayor cantidad de gases a la atmósfera</li>
                        <li><input type="radio" name="pregunta3" id="p33"> Las grandes granjas y sus concetraciones de desechos</li>
                        <li><input type="radio" name="pregunta3" id="p32"> La erupcion constante de volcanes terrestres y marinos</li>

                    </ol>
                    <h6 class="headline text-thin text-s-size-30">4.-¿Cuáles son los principales gases del efecto invernadero??</h6>
                    <ol type="A">
                        <li><input type="radio" name="pregunta4" id="p41"> Dioxido De Carbono, Oxigeno, Nitrogeno</li>
                        <li><input type="radio" name="pregunta4" id="p42"> Oxigeno, Dioxido De Carbono, Metano</li>
                        <li><input type="radio" name="pregunta4" id="p43"> Dioxido De Carbono, Metano, Gases fluorados</li>
             
                    </ol>
                    <h6 class="headline text-thin text-s-size-30">5.-¿Como se monitorea el estado del clima?</h6>
                    <ol type="A">
                        <li><input type="radio" name="pregunta5" id="p55"> Con la distancia del sol a la tierra</li>
                        <li><input type="radio" name="pregunta5" id="p51"> Con satélites en la órbita terrestre y estaciones meteorológicas</li>
                        <li><input type="radio" name="pregunta5" id="p52"> Registrando las temperaturas dia con dia</li>
    
                    </ol>
                    <hr />
                    <button type="button" class="btn btn-primary" onclick="resultado()">RESULTADO</button>
                    <input type="hidden" name="nota" id="nota" value="" />
                    <hr />
                </form>
            </div>
        </div>
    </div>

         

            
       
        
        
         
         <br><br><br><br>
     
         
          <!-- FOOTER -->
    <footer>
        
         
           <nav aria-label="...">
            <ul class="pagination justify-content-center">
              <li class="page-item">
                <a class="page-link" href="Climatico2.jsp">Previous</a>
              </li>
              <li class="page-item"><a class="page-link" href="CambioClimatico.jsp">1</a></li>
              <li class="page-item" aria-current="page">
                <a class="page-link" href="Climatico2.jsp">2</a>
              </li>
              <li class="page-item"><a class="page-link active" href="#">3</a></li>
              <li class="page-item disabled">
                <a class="page-link disabled" id="next" href="#">Next</a>
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
        
          
       <script src="js/Quizz_1.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/js/bootstrap.min.js"
        integrity="sha384-7aThvCh9TypR7fIc2HV4O/nFMVCBwyIUKL8XCtKE+8xgCgl/PQGuFsvShjr74PBp"
        crossorigin="anonymous"></script>  
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>    
        <script type="text/javascript" src="js/validation.js"></script> 
          
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

       
    </body>
</html>