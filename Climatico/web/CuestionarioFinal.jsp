<%-- 
    Document   : CuestionarioFinal
    Created on : Nov 22, 2023, 11:09:39 PM
    Author     : Dinaxis
--%>


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

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link  rel="stylesheet" href="css/components.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/responsee.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="css/template-style.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href="css/form.css" rel="stylesheet" type="text/css"/>
    <title>Cuestionario</title>
    <style>
        

        h1, h3 {
            color: #005700; 
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
        }

        li ul {
            margin-top: 5px;
            margin-bottom: 10px;
            margin-left: 20px;
        }

        p {
            font-weight: bold;
            color: #267300; 
        }
    </style>
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
                                     
                    <div class="row" style="background-color: #002633;">
                    <div class="container-lg text-center text-white">
                        <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-clipboard-check" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
  <path d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1z"/>
  <path d="M9.5 1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0z"/>
</svg><h1 class="headline text-thin text-s-size-20">Cuestionario Final</h1>
                    </div>
                </div>  
                                     <br><br><br>
     <section>
    <div class="container-lg background-white">
        <form id="Final" method="post" action="Certifcado">
                    <h3>Pregunta 1: ¿Qué es el cambio climático y cuáles son sus principales causas?</h3>
        <input type="radio" name="pregunta1" id="A1" required> A. Aumento de gases de efecto invernadero por actividades humanas.<br>
        <input type="radio" name="pregunta1" id="B1"> B. 
Variaciones naturales en el clima.<br>
        <input type="radio" name="pregunta1" id="C1"> C. 
Cambios en la órbita terrestre.<br>
        
<br><br>
        <h3>Pregunta 2: ¿Cuál es la importancia de la biodiversidad y cómo podemos contribuir a su conservación?</h3>
        <input type="radio" name="pregunta2" id="A2" required> A. La biodiversidad no tiene impacto en nuestra vida diaria.<br>
        <input type="radio" name="pregunta2" id="B2"> B. Solo es relevante para los científicos.<br>
        <input type="radio" name="pregunta2" id="C2"> C. Contribuye a servicios ecosistémicos y a la salud del planeta.<br>
        <br><br>
        <h3>Pregunta 3: ¿De que formas las personas pueden reducir su huella de carbono en la vida cotidiana?</h3>
        <input type="radio" name="pregunta3" id="A3" required> A. Usar plásticos de un solo uso.<br>
        <input type="radio" name="pregunta3" id="B3"> B. Consumir productos locales y de temporada.<br>
        <input type="radio" name="pregunta3" id="C3"> C. 
Dejar los electrodomésticos encendidos todo el tiempo.<br>
        <br><br>
        <h3>Pregunta 4: ¿Cómo afecta la contaminación del aire a la salud humana y al medio ambiente?</h3>
        <input type="radio" name="pregunta4" id="A4" required> A. No tiene impacto en la salud humana.<br>
        <input type="radio" name="pregunta4" id="B4"> B. Solo afecta a los animales, no a las personas.<br>
        <input type="radio" name="pregunta4" id="C4"> C. Puede causar enfermedades respiratorias y dañar la vegetación.<br> 
        <br><br>
        <h3>Pregunta 5: ¿Cuáles son los efectos del uso excesivo de plásticos en los océanos y cómo podemos abordar este problema?</h3>
        <input type="radio" name="pregunta5" id="A5" required> A. Pueden causar daño a la vida marina y contaminar el agua.<br>
        <input type="radio" name="pregunta5" id="B5"> B. 
Los plásticos no afectan a los océanos.<br>
        <input type="radio" name="pregunta5" id="C5"> C. La única solución es prohibir completamente el uso de plásticos.<br>
        <br><br>
        <h3>Pregunta 6: ¿Cómo afecta la deforestación a los ecosistemas y cuáles son las posibles soluciones para este problema?</h3>
        <input type="radio" name="pregunta6" id="A6" required> A. Puede provocar pérdida de hábitats y contribuir al cambio climático.<br>
        <input type="radio" name="pregunta6" id="B6"> B. La única solución es plantar más árboles.<br>
        <input type="radio" name="pregunta6" id="C6"> C. 
La deforestación no tiene consecuencias.<br> 
        <br><br>
        <h3>Pregunta 7: ¿Qué papel juegan las actividades humanas en la acidificación de los océanos y cuáles podrían ser las consecuencias?</h3>
        <input type="radio" name="pregunta7" id="A7" required> A. 
La acidificación no tiene impacto en los océanos.<br>
        <input type="radio" name="pregunta7" id="B7"> B. Las actividades humanas no afectan la acidificación de los océanos.<br>
        <input type="radio" name="pregunta7" id="C7"> C. Contribuyen al aumento de la acidez del agua, perjudicando la vida marina.<br>
        <br><br>
        <h3>Pregunta 8: ¿Cómo podemos fomentar la conciencia ambiental y la acción sostenible en nuestras comunidades?</h3>       
        <input type="radio" name="pregunta8" id="A8" required> A. Educar y promover prácticas sostenibles en la comunidad<br>
        <input type="radio" name="pregunta8" id="B8"> B. 
Ignorar los problemas ambientales.<br>
        <input type="radio" name="pregunta8" id="C8"> C. 
Esperar a que el gobierno resuelva todos los problemas ambientales.<br>
        <br><br>
        <h3>Pregunta 9: ¿Cuáles son algunas maneras en las que podemos conservar el agua en nuestra vida diaria para ayudar al medio ambiente?</h3>
        <input type="radio" name="pregunta9" id="A9" required> A. Dejar los grifos abiertos todo el tiempo.<br>
        <input type="radio" name="pregunta9" id="B9"> B. Cerrar el grifo mientras lavamos los dientes o lavamos platos.<br>
        <input type="radio" name="pregunta9" id="C9"> C. Utilizar agua potable para regar plantas.<br> 
        <br><br>
        <h3>Pregunta 10: ¿Por qué es importante reciclar y cómo podemos participar en la práctica del reciclaje en nuestras casas?</h3>
        <input type="radio" name="pregunta10" id="A10" required> A. Es responsabilidad solo de las empresas.<br>
        <input type="radio" name="pregunta10" id="B10"> B. Ayuda a reducir la cantidad de residuos y conservar los recursos naturales.<br>
        <input type="radio" name="pregunta10" id="C10"> C. 
El reciclaje no tiene beneficios para el medio ambiente.<br><br><br>
                    <hr />
                    <button type="button" class="btn btn-primary" onclick="resultado()">RESULTADO</button>
                    <input type="hidden" name="final" id="final" value="" />
                    <hr />
                </form>
        
    </div>
              
        
        
        
</section>    
                                     


   

    

        <script src="js/QuizzFinal.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>

