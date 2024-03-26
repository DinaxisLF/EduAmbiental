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
        <title>�C�mo ponerse en acci�n?</title>
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
                <h1 class="headline text-thin text-s-size-20"><span class="text-dark">�C�mo Ponerse En Acci�n?</span></h1>
         </div>  
                    
    </section>
          
        
        
         
    <section class="section background-dark">
        <div class="line">
            <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="Imagenes/acciones.jpg" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="Imagenes/acciones 2.jpg" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="Imagenes/acciones 3.jpg" class="d-block w-100" alt="...">
                  </div>
                </div>
             </div> 
        </div>
     </section>
                                    
    <section data-aos="flip-down" id="section1">
        <br><br><br>
        <div  class="container-lg d-flex justify-content-center" >
            <img class="img-fluid rounded mb-4" src="Imagenes/ahorrarE.jpeg" alt="..." > 
            
        </div>
        
        <div class="container-lg d-flex justify-content-center" >
            <h2>Ahorre energ�a en casa</h2>
        </div>
        
        <div class="container-lg d-flex justify-content-center" >
            <p  class="text-size-20 text-s-size-16 text-dark text-center">
                            Gran parte de nuestra electricidad y calefacci�n funciona con carb�n, petr�leo y gas. Utiliza menos energ�a reduciendo la 
                            calefacci�n y el aire acondicionado, cambiando a bombillas LED y electrodom�sticos de bajo consumo, lavando la ropa con agua 
                            fr�a o tendiendo la ropa mojada en lugar de utilizar la secadora.
                           
                            !
           </p>
           
        </div>
        
      
        
        <br><br<<br>
                
        </section>
                      
        <section data-aos="flip-down" id="section2">
        <br><br><br>
        <div  class="container-lg d-flex justify-content-center" >
            <img class="img-fluid rounded mb-4" src="Imagenes/bici.png" alt="..." > 
            
        </div>
        
        <div class="container-lg d-flex justify-content-center" >
           <h2>Despl�cese caminando, en bicicleta o en transporte p�blico</h2>
        </div>
        
        <div class="container-lg d-flex justify-content-center" >
            <p  class="text-size-20 text-s-size-16 text-dark text-center">
                            Las carreteras del mundo est�n saturadas de veh�culos, la mayor�a de los cuales usan di�sel o gasolina.
                            Caminar o ir en bicicleta en lugar de conducir reduce las emisiones de gases de efecto invernadero, y supone
                            un beneficio para la salud y la forma f�sica. Para distancias m�s largas, considera viajar en tren o autob�s. 
                            Y comparte el coche siempre que sea posible.
           </p>
           
        </div>
        
        
        
        <br><br<<br>
                
        </section>     
                                     
         <section data-aos="flip-down" id="section3">
        <br><br><br>
        <div class="container-lg d-flex justify-content-center" >
            <img class="img-fluid rounded mb-4" src="Imagenes/verduras.png" alt="..." > 
            
        </div>
        
        <div class="container-lg d-flex justify-content-center" >
            <h2>Coma m�s verduras</h2>
        </div>
        
        <div class="container-lg d-flex justify-content-center" >
            <p  class="text-size-20 text-s-size-16 text-dark text-center">
                            Comer m�s verduras, frutas, cereales integrales, legumbres, frutos secos y semillas, y menos carne y productos l�cteos, 
                            puede reducir considerablemente tu impacto medioambiental. La producci�n de alimentos de origen vegetal suele generar 
                            menos emisiones de gases de efecto invernadero y requiere menos energ�a, tierra y agua.
           </p>
           
        </div>
        
      
        
        <br><br<<br>
                
        </section>
        
         <section data-aos="flip-down" id="section4">
        <br><br><br>
        <div class="container-lg d-flex justify-content-center" >
            <img class="img-fluid rounded mb-4" src="Imagenes/medioTransp.jpeg" alt="..." > 
            
        </div>
        
        <div class="container-lg d-flex justify-content-center" >
            <h2>Considere sus desplazamientos</h2>
        </div>
        
        <div class="container-lg d-flex justify-content-center" >
            <p  class="text-size-20 text-s-size-16 text-dark text-center">
                           Los aviones usan grandes cantidades de combustibles f�siles, produciendo importantes emisiones de gases de efecto invernadero.
                           Esto hace que tomar menos vuelos sea una de las formas m�s r�pidas de reducir tu impacto medioambiental. Cuando puedas,
                           re�nete virtualmente, toma un tren o o evita un viaje de larga distancia.
           </p>
           
        </div>
        
      
        
        <br><br<<br>
                
        </section>   
                                     
        <section data-aos="flip-down" id="section5">
        <br><br><br>
        <div class="container-lg d-flex justify-content-center" >
            <img class="img-fluid rounded mb-4" src="Imagenes/comida.png" alt="..." > 
            
        </div>
        
        <div class="container-lg d-flex justify-content-center" >
            <h2>Tire menos comida</h2>
        </div>
        
        <div class="container-lg d-flex justify-content-center" >
            <p  class="text-size-20 text-s-size-16 text-dark text-center">
                           Cuando tiras comida, tambi�n desperdicias los recursos y la energ�a que se utilizaron para cultivarla, 
                           producirla, envasarla y transportarla. Y cuando los alimentos se pudren en un vertedero, producen metano, un potente 
                           gas de efecto invernadero. As� pues, utiliza lo que compres y convierte en abono los restos.
           </p>
           
        </div>
        
      
        <br><br<<br>
                
        </section>       
                                     
        <section data-aos="flip-down" id="section6">
        <br><br><br>
        <div class="container-lg d-flex justify-content-center" >
            <img class="img-fluid rounded mb-4" src="Imagenes/3r.png" alt="..." > 
            
        </div>
        
        <div class="container-lg d-flex justify-content-center" >
            <h2>Reduzca, reutilice, repare y recicle</h2>
        </div>
        
        <div class="container-lg d-flex justify-content-center" >
            <p  class="text-size-20 text-s-size-16 text-dark text-center">
                            Los aparatos electr�nicos, la ropa y otros art�culos que compramos generan emisiones de carbono en cada eslab�n de la cadena 
                            de producci�n, desde la extracci�n de las materias primas hasta la fabricaci�n y el transporte de los productos al mercado. 
                            Para proteger nuestro clima, compra menos cosas, compra de segunda mano, repara lo que puedas y recicla.
           </p>
           
        </div>
        
     
        
        <br><br<<br>
                
        </section>                             
       
        <section data-aos="flip-down" id="section7">
        <br><br><br>
        <div class="container-lg d-flex justify-content-center" >
            <img class="img-fluid rounded mb-4" src="Imagenes/renovable.png" alt="..." > 
            
        </div>
        
        <div class="container-lg d-flex justify-content-center" >
            <h2>Cambie a un veh�culo el�ctrico</h2>
        </div>
        
        <div class="container-lg d-flex justify-content-center" >
            <p  class="text-size-20 text-s-size-16 text-dark text-center">
                            Si piensas comprar un coche, considera la posibilidad de adquirir un modelo el�ctrico, ya que cada vez se comercializan m�s 
                            modelos a menor precio. Aunque funcionen con electricidad producida a partir de combustibles f�siles, los coches 
                            el�ctricos contribuyen a reducir la contaminaci�n atmosf�rica y causan menos emisiones de gases de efecto invernadero que 
                            los veh�culos de gas o di�sel.
           </p>
           
        </div>
        
       

        <br><br<<br>
                
        </section> 
        
     <section data-aos="flip-down" id="section8">
        <br><br><br>
        <div class="container-lg d-flex justify-content-center" >
            <img class="img-fluid rounded mb-4" src="Imagenes/vehiculo.png" alt="..." > 
            
        </div>
        
        <div class="container-lg d-flex justify-content-center" >
            <h2>Cambie el tipo de energ�a de su casa</h2>
        </div>
        
        <div class="container-lg d-flex justify-content-center" >
            <p  class="text-size-20 text-s-size-16 text-dark text-center">
                            Pregunta a tu compa��a el�ctrica si la energ�a de tu hogar procede del petr�leo, carb�n o gas. Si es posible, comprueba si
                            puedes cambiar a fuentes renovables, como la e�lica o la solar. O bien instala paneles solares en tu tejado para generar la
                            energ�a de tu vivienda.
           </p>
           
        </div>

        <br><br<<br>
                
        </section> 

                                     
                                     
         
          <!-- FOOTER -->
    <footer>
        
         
           <nav aria-label="...">
            <ul class="pagination justify-content-center">
              <li class="page-item">
                <a class="page-link" href="Impacto3.jsp">Previous</a>
              </li>
              <li class="page-item active"><a class="page-link" href="#">1</a></li>
              <li class="page-item" aria-current="page">
                <a class="page-link" href="EnAccion2.jsp">2</a>
              </li>
                <a class="page-link" href="EnAccion2.jsp">Next</a>
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