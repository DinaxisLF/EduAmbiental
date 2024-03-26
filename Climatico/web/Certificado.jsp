<%-- 
    Document   : Certificado
    Created on : Nov 23, 2023, 3:13:46 PM
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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/board.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"/>
    <link  rel="stylesheet" href="css/components.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/responsee.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="css/template-style.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>Certificado</title>
</head>
<body>
     <script src="js/jspdf.min.js" type="text/javascript"></script>
    <script type="text/javascript"> 

        //Nombre del usuario
        

        function PDF(nombre){
            var doc = new jsPDF('landscape'); // Hoja en orientación horizontal

            // Para usar dentro de la función
            var img = new Image();
            img.src = 'Imagenes/Certificado.jpg';

            //Caracteristicas imagen del certificado
            img.onload = function () {
                var width = 300; // Establecí un ancho fijo
                var height = 200; // Establecí una altura fija
                doc.addImage(img, 'JPEG', 0, 0, width, height);

                let nombrePDF = nombre;
                let fecha = new Date().toLocaleDateString();//Obtiene la fecha actual

                 //Caracteristicas del Nombre
                doc.setFontSize(28); 
                doc.setTextColor(0, 0, 255);
                doc.setFontStyle('bold');
                var textWidth = doc.getStringUnitWidth(nombrePDF) * doc.internal.getFontSize() / doc.internal.scaleFactor;
                var textOffset = (doc.internal.pageSize.width - textWidth) / 2;
                doc.text(textOffset, 100, 'A: ' + nombrePDF);

                //Caracteristicas de la fecha
                doc.setFontSize(16); 
                doc.setTextColor(0);
                doc.setFontStyle('normal');
                doc.text(120, 151, fecha);

                // Guardar el pdf
                doc.save('Certificado ' + nombre + '.pdf'); 

            };
        }
    </script>
    
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
          
                                            <h1 class="headline text-thin text-s-size-20"><span class="text-dark">!Felicidades!<br> Has Completado El Curso</span></h1>

                </div>  
                         <div class="row">
            
            <div class="col-4">
                 <img src="Imagenes/bot.gif">
            </div>
            
            <div class="col-8 text-center">
                <br><br><br>
                <h2>Certificado PDF</h2>
                  <a href="javascript: PDF('${username}')" class="btn btn-success text-white">Obtener</a>
            </div>
                                         
                                         
                </div>                
                </div>
        
        
    </section> 
  
    
</body>
</html>

