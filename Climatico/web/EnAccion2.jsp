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
        <title>¿Cómo ponerse en acción?</title>
    <link  rel="stylesheet" href="css/components.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/responsee.css">
    <link rel="stylesheet" href ="css/acciones.css">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="css/template-style.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    </head>
    <body class="size-1140" >
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
        <div class="container-fluid background-white text-center">
                <h1 class="headline text-thin text-s-size-20"><span class="text-dark">¿Cómo Ponerse En Acción?</span></h1>
         </div>  
                    
    </section>
          
    <section >
            
           <div class="container-fluid"  style="text-align:center;">
               <div class=" container-sm text-white rounded-5 background-dark">
                    <h2 class="headline text-thin text-s-size-30">Empresas</h2>
               </div>
           
            <br> <br>
            <div class="container-fluid" style="text-align:justify;">
                <div class="row">
                    <div class="col-8 center">
                        <h2 class="headline text-thin text-s-size-30 text-center">La importancia de las empresas en esta lucha</h2>
                        <p class="text-size-20 text-s-size-16 text-thin text-center">
                                Los cambios climáticos ejercerán un impacto directo sobre las empresas pues afectarán, por ejemplo, 
                                a sus infraestructuras e inversiones. La legislación ampliará su alcance y extensión a medida que el electorado
                                vaya adquiriendo una mayor conciencia del problema y los gobiernos reaccionen a las consecuencias del cambio climático y los 
                                costes de las medidas de adaptación. En la actualidad ya existe el germen de un marco normativo; la iniciativa más conocida es
                                el Protocolo de Kyoto, que compromete a los países que lo suscribieron a reducir sus emisiones de CO2 a lo largo de períodos
                                de tiempo fijos. No obstante, se están realizando progresos políticos también en otros contextos.
                                <br><br>
                                Aunque la sociedad en su conjunto tiene la responsabilidad de contribuir al desarrollo sostenible, las empresas desempeñan
                                un papel capital en este objetivo. Su impacto en el bienestar colectivo e individual es clave: ayudan a mejorar la vida de 
                                las personas mediante los productos que ofrecen y los servicios que prestan; contribuyen al desarrollo económico y social; 
                                y su actividad tiene un efecto directo sobre el entorno y el medio ambiente.
                                
                        </p>
                     </div>
            
                </div><br>
                <div class="row">
                    <div class="col-8 center" >
                        <img src="Imagenes/sostenible.jpg" class="img-fluid">
                    </div>>
                     </div>
                </div>
                
            </div>
         
        </section>
                                                      
        <section class="background-white">
            <hr> 
          <div class="container-fluid" style="text-align:justify;">
                <div class="row">
                    <div class="col-8 center">
                        <h2 class="headline text-thin text-s-size-30 text-center">¿Qué pueden hacer las empresas? </h2>
                        
                      
                        <p class="text-size-40  text-thin text-center">
                               Las principales líneas de actuación son las siguientes: 
                               <br><br>
                                    <ol>
                                        <li class="text-l-size-25">Utilizar materiales sostenibles en la producción.</li>
                                        <li class="text-l-size-25">Disminución en el desperdicio de alimentos.</li>
                                        <li class="text-l-size-25">Uso responsable de los recursos naturales.</li>
                                        <li class="text-l-size-25">Preferencia de energías renovables para reducir la huella de carbono.</li>
                                        <li class="text-l-size-25">Implementación de un programa de reciclaje.</li>
                                        <li class="text-l-size-25">Minimizar los viajes o el uso de combustibles fósiles.</li>
                                        <li class="text-l-size-25">Gestión adecuada de residuos. </li>
                                    </ol>

                                   
                                   
                                
                        </p>
                     </div>
            
                </div><br>

                </div>
                
            </div>
        </section>                            
           
                                     
         <div class=" container-fluid text-white text-center rounded-5 background-dark">
                    <h2 class="headline text-thin text-s-size-30">Evaluación Del Modulo</h2>
               </div>

         <br><br>
         
         <section style="align-content: left">
              <div class="container">
            <div class="row">
            <div class="col">
                <form id="cuestionario3" method="post" action="Actividades3">
                    <h6 class="headline text-thin text-s-size-30">1.-¿Cómo afecta el cambio climático a las empresas?</h6>
                    <ol type="A">
                        <li><input type="radio" name="pregunta1" id="p11"> A sus infraestructuras e inversiones </li>
                        <li><input type="radio" name="pregunta1" id="p12"> Daña sus dinero</li>
                        <li><input type="radio" name="pregunta1" id="p13"> Las obliga a consumir más recursos</li>
                  
                    </ol>
                    <h6 class="headline text-thin text-s-size-30">2.-¿Qué es el protocolo de Kyoto?</h6>
                    <ol type="A">
                        <li><input type="radio" name="pregunta2" id="p21"> Una plan de emergencia ante erupciones</li>
                        <li><input type="radio" name="pregunta2" id="p23"> Un acuerdo para combatir las sequias globales</li>
                        <li><input type="radio" name="pregunta2" id="p22"> Un marco normativo que compromete a los países  a reducir sus emisiones de CO2</li>
                    </ol>
                     <h6 class="headline text-thin text-s-size-30">3.-¿Por que es importante reducir el consumo energetico?</h6>
                    <ol type="A">
                        <li><input type="radio" name="pregunta3" id="p31"> Para que no pagemos tanto en la factura</li>
                        <li><input type="radio" name="pregunta3" id="p33"> Por que nuestra electricidad funciona con carbón, petróleo y gas</li>
                        <li><input type="radio" name="pregunta3" id="p32"> Para reducir la contaminacion luminica</li>

                    </ol>
                    <h6 class="headline text-thin text-s-size-30">4.-Cuando tiras comida, también desperdicias los recursos y la energía que se utilizaron para cultivarla, producirla, envasarla y transportarla.</h6>
                    <ol type="A">
                        <li><input type="radio" name="pregunta4" id="p41">Verdadero</li>
                        <li><input type="radio" name="pregunta4" id="p42">Falso</li>
          
             
                    </ol>
                    <hr />
                    <button type="button" class="btn btn-primary" onclick="resultado()">RESULTADO</button>
                    <input type="hidden" name="nota3" id="nota3" value="" />
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
                <a class="page-link" href="EnAccion.jsp">Previous</a>
              </li>
              <li class="page-item "><a class="page-link" href="EnAccion.jsp">1</a></li>
              <li class="page-item active" aria-current="page">
                <a class="page-link" href="#">2</a>
              </li>
                <a class="page-link disabled " href="CuestionarioFinal.jsp">Next</a>
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
        
        <script src="js/Quizz_3.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/js/bootstrap.min.js"
        integrity="sha384-7aThvCh9TypR7fIc2HV4O/nFMVCBwyIUKL8XCtKE+8xgCgl/PQGuFsvShjr74PBp"
        crossorigin="anonymous"></script> 

          
        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script>
            AOS.init();
        </script> 
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>