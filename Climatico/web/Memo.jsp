<%-- 
    Document   : Memo
    Created on : Nov 23, 2023, 12:00:03 PM
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
    <title>Memorama</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"/>
    <link  rel="stylesheet" href="css/components.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/responsee.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="css/template-style.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
</head>
<body>
    
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
                                <a class="nav-link" aria-current="page" href="Contenido.jsp">Contenido</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="Memo.jsp">Juego</a>
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
                        <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-controller" viewBox="0 0 16 16">
  <path d="M11.5 6.027a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0m-1.5 1.5a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1m2.5-.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0m-1.5 1.5a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1m-6.5-3h1v1h1v1h-1v1h-1v-1h-1v-1h1v-1"/>
  <path d="M3.051 3.26a.5.5 0 0 1 .354-.613l1.932-.518a.5.5 0 0 1 .62.39c.655-.079 1.35-.117 2.043-.117.72 0 1.443.041 2.12.126a.5.5 0 0 1 .622-.399l1.932.518a.5.5 0 0 1 .306.729c.14.09.266.19.373.297.408.408.78 1.05 1.095 1.772.32.733.599 1.591.805 2.466.206.875.34 1.78.364 2.606.024.816-.059 1.602-.328 2.21a1.42 1.42 0 0 1-1.445.83c-.636-.067-1.115-.394-1.513-.773-.245-.232-.496-.526-.739-.808-.126-.148-.25-.292-.368-.423-.728-.804-1.597-1.527-3.224-1.527-1.627 0-2.496.723-3.224 1.527-.119.131-.242.275-.368.423-.243.282-.494.575-.739.808-.398.38-.877.706-1.513.773a1.42 1.42 0 0 1-1.445-.83c-.27-.608-.352-1.395-.329-2.21.024-.826.16-1.73.365-2.606.206-.875.486-1.733.805-2.466.315-.722.687-1.364 1.094-1.772a2.34 2.34 0 0 1 .433-.335.504.504 0 0 1-.028-.079zm2.036.412c-.877.185-1.469.443-1.733.708-.276.276-.587.783-.885 1.465a13.748 13.748 0 0 0-.748 2.295 12.351 12.351 0 0 0-.339 2.406c-.022.755.062 1.368.243 1.776a.42.42 0 0 0 .426.24c.327-.034.61-.199.929-.502.212-.202.4-.423.615-.674.133-.156.276-.323.44-.504C4.861 9.969 5.978 9.027 8 9.027s3.139.942 3.965 1.855c.164.181.307.348.44.504.214.251.403.472.615.674.318.303.601.468.929.503a.42.42 0 0 0 .426-.241c.18-.408.265-1.02.243-1.776a12.354 12.354 0 0 0-.339-2.406 13.753 13.753 0 0 0-.748-2.295c-.298-.682-.61-1.19-.885-1.465-.264-.265-.856-.523-1.733-.708-.85-.179-1.877-.27-2.913-.27-1.036 0-2.063.091-2.913.27z"/>
</svg><h1 class="headline text-thin text-s-size-20">Memorama</h1>
                    </div>
                </div>                                  
    
                                     <hr>
    <main class="board-game">

        
        <figure >
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="Imagenes/1.jpg" alt="Back">
            </div>
        </figure>
        <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
        <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
        
        <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
        
        <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
        
        <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
        
        <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
        
        <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
        
         <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
         <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
         <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
         <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
         <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
         <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
         <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
         <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
         <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
         <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
         <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
         <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
         <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
         <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
         <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
         <figure>
            <img class="back" src="Imagenes/13.jpg" alt="Back">
            <div class="searched-image">
                <img src="" alt="Back">
            </div>
        </figure>
        
        
    </main>

    <script src="js/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>