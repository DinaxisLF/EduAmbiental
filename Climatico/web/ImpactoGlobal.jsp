
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
                    <h2 class="headline text-thin text-s-size-30">Causas</h2>
               </div>
           
            <br> <br>
            <div class="container-fluid" style="text-align:justify;">
                <div class="row">
                    <div class="col-8 center">
                        <h2 class="headline text-thin text-s-size-30 text-center">Principales <span class="text-primary"> causas</span> del calentamiento global</h2>
                        <h4 class="headline text-thin text-s-size-30 text-center">Causas naturales</h4>

                        <p class="text-size-20 text-s-size-16 text-thin text-center">
                            La tierra ha pasado por fases de calentamiento y enfriamiento en el pasado, mucho antes
                             de que existieran los humanos. Las fuerzas que pueden contribuir al cambio climático
                              incluyen la intensidad del sol, las erupciones volcánicas y los cambios en las 
                              concentraciones de gases de efecto invernadero que ocurren naturalmente. Pero los 
                              registros indican que el calentamiento climático actual, en particular el que ha 
                              ocurrido desde mediados del siglo XX, ocurre a un ritmo mucho más rápido que nunca 
                              y no puede explicarse únicamente por causas naturales.              
                        </p>
                        <div class="row">
                            <div class="col-8 center" >
                                <img src="Imagenes/Sol.jpg" class="img-fluid">
                            </div>>
                             </div>
                        <h4 class="headline text-thin text-s-size-30 text-center">Causas antropogénicas</h4>

                        <p class="text-size-20 text-s-size-16 text-thin text-center">
                            Los seres humanos, o más específicamente, las emisiones de gases de efecto invernadero
                             (GEI) que genera la actividad humana, son la principal causa del rápido cambio climático
                              de la Tierra en la actualidad. Los gases de efecto invernadero juegan un papel 
                              importante para mantener al planeta lo suficientemente cálido como para habitarlo. 
                              Pero la cantidad de estos gases en nuestra atmósfera se ha disparado en las últimas
                               décadas.  De hecho, la proporción de dióxido de carbono de la atmósfera, el principal 
                               contribuyente al cambio climático del planeta, ha aumentado en un 46 por ciento desde la 
                               época preindustrial.
                        </p>
                        <div class="row">
                            <div class="col-8 center" >
                                <img src="Imagenes/Fabrica.jpg" class="img-fluid">
                            </div>>
                             </div>
                        </div>
                     </div>
            
                </div>
                
                
            </div>
         
        </section>
         
         
         <br><br><br><br>
         <section>
             
             <div class=" container" style="text-align:center;">
                <div class="row">
                    <div class="col-8 center" >
                    
                        <div class="ratio ratio-16x9">
                            <video controls="" preload="auto"> 
                                <source src="Recursos/Efecto Invernadero.mp4" type="video/mp4">
                                Your browser does not support the video tag.</video>
                              

                        </div>
                          
                    </div>>
                     </div> 
               
             </div>
         </section>

            
       
        
        
         
         <br><br><br><br>
     
         
          <!-- FOOTER -->
    <footer>
        
         
           <nav aria-label="...">
            <ul class="pagination justify-content-center">
              <li class="page-item">
                <a class="page-link" href="Climatico3.jsp">Previous</a>
              </li>
              <li class="page-item active"><a class="page-link" href="#">1</a></li>
              <li class="page-item" aria-current="page">
                <a class="page-link" href="Impacto2.jsp">2</a>
              </li>
              <li class="page-item"><a class="page-link" href="Impacto3.jsp">3</a></li>
              <li class="page-item">
                <a class="page-link" href="Impacto2.jsp">Next</a>
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