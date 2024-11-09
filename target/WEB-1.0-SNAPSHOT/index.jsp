<%-- 
    Document   : index
    Created on : 26 oct. 2024, 23:09:18
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cloth Shop</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style-menu.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/styleChatbot.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    
</head>
<body>

    <!-- INICIO DE BARRA DE MENU + LOGO -->

        <div class="head">
        <div class="logo">
            <a href="index.jsp"><img src="<%= request.getContextPath() %>/Img/LogoOficial1.jpg" height="190px" width="280px" alt="logito"></a>
        </div>

        
        <nav class="navbar">
            <a href="index.jsp">Inicio</a>
            <a href="nosotros.jsp">Nosotros</a>
            <a href="contacto.jsp">Contacto</a>
            <a href="registro-login.jsp">Registrate</a>
            <a href="login.jsp"><i class="material-icons" style="font-size:25px">shopping_basket</i></a>
        </nav>

    </div>

    <!-- FIN DE LA BARRA DE MENU -->

    <!-- CARRUSEL O SLIDER (INICIO)-->

    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>

  <div class="carousel-inner">

    <div class="carousel-item active d-item">
      <img src="<%= request.getContextPath() %>/Img/Portada2.jpg" class="d-block w-100 d-img" alt="slider 1">
      <div class="carousel-caption top-0 mt-4">
        <!--<p class="mt-5 fs-3 text-uppercase">
            Mira los nuevos precios
        </p>
        <h1 class="display-1 fw-bolder text-capitalize">LOGO</h1>
        <button class="btn btn-primary px-4 py-2 fs-5 mt-5">Información</button>-->
      </div>
    </div>

    <div class="carousel-item d-item">
        <img src="<%= request.getContextPath() %>/Img/Portada3.jpg" class="d-block w-100 d-img" alt="slider 1">
        <div class="carousel-caption top-0 mt-4">
          <!--<p class="mt-5 fs-3 text-uppercase">
              Mira los nuevos precios
          </p>
          <h1 class="display-1 fw-bolder text-capitalize">LOGO</h1>
          <button class="btn btn-primary px-4 py-2 fs-5 mt-5">Información</button>-->
        </div>
      </div>

      <div class="carousel-item d-item">
        <img src="<%= request.getContextPath() %>/Img/Portada4.jpg" class="d-block w-100 d-img" alt="slider 1">
        <div class="carousel-caption top-0 mt-4">
          <!--<p class="mt-5 fs-3 text-uppercase">
              Mira los nuevos precios
          </p>
          <h1 class="display-1 fw-bolder text-capitalize">LOGO</h1>
          <button class="btn btn-primary px-4 py-2 fs-5 mt-5">Información</button>-->
        </div>
      </div>

  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

    <!-- (FIN)-->


    
    <!-- INICIO DE GRID CARD  -->


    <div class="gallery">


        <div class="content">
            <img class="imgstyle" src="<%= request.getContextPath() %>/Img/MUJERES/SACO CP.png">
            <h3>Ropa de Mujer</h3>
            <p>50% descuento</p>
            <h6>Favorito</h6>
            <ul>
                <li><i class="fa fa-star checked"></i></li>
                <li><i class="fa fa-star checked"></i></li>
                <li><i class="fa fa-star checked"></i></li>
                <li><i class="fa fa-star checked"></i></li>
                <li><i class="fa fa-star checked"></i></li>
            </ul>
            <a href="mujeres.jsp" ><button class="buy-1">Comprar</button></a>
        </div>

        <div class="content">
            <img class="imgstyle" src="<%= request.getContextPath() %>/Img/HOMBRES/Hombre1.jpeg">
            <h3>Ropa de Hombre</h3>
            <p>20% descuento</p>
            <h6>Favorito</h6>
            <ul>
                <li><i class="fa fa-star checked"></i></li>
                <li><i class="fa fa-star checked"></i></li>
                <li><i class="fa fa-star checked"></i></li>
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star"></i></li>
            </ul>
            <a href="hombres.jsp"><button class="buy-2">Comprar</button></a>
        </div>

        <div class="content">
            <img class="imgstyle" src="<%= request.getContextPath() %>/Img/NIÑOS/Nino1.jpeg">
            <h3>Ropa de Niños</h3>
            <p>50% descuento</p>
            <h6>Favorito</h6>
            <ul>
                <li><i class="fa fa-star checked"></i></li>
                <li><i class="fa fa-star checked"></i></li>
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star"></i></li>
                <li><i class="fa fa-star"></i></li>
            </ul>
            <a href="niños.jsp"><button class="buy-3">Comprar</button></a>
        </div>

        <div class="content">
            <img class="imgstyle" src="<%= request.getContextPath() %>/Img/NIÑAS/Nina1.jpeg">
            <h3>Ropa de Niñas</h3>
            <p>15% descuento</p>
            <h6>Favorito</h6>
            <ul>
                <li><i class="fa fa-star checked"></i></li>
                <li><i class="fa fa-star checked"></i></li>
                <li><i class="fa fa-star checked"></i></li>
                <li><i class="fa fa-star checked"></i></li>
                <li><i class="fa fa-star"></i></li>
            </ul>
            <a href="niñas.jsp"><button class="buy-4">Comprar</button></a>
        </div>


    </div>

<!-- FIN DE GRID CARD  -->








<!-- INICIO DE CHATBOT  -->




    <div class="wrapper">
        <div class="title">ChatBot ClothShop</div>
        <div class="form">
            <div class="bot-inbox inbox">
                <div class="icon">
                    <i class="fas fa-user"></i>
                </div>
                <div class="msg-header">
                    <p>Hola, ¿cómo puedo ayudarte?</p>
                </div>
            </div>
        </div>
        <div class="typing-field">
            <div class="input-data">
                <input id="data" type="text" placeholder="Escribe algo aquí.." required>
                <button id="send-btn">Enviar</button>
            </div>
        </div>
    </div>

    <!--Zona de JavaScript (: -->

    <script>
        $(document).ready(function() {
            $("#send-btn").on("click", function() {
                $value = $("#data").val();
                $msg = '<div class="user-inbox inbox"><div class="msg-header"><p>' + $value + '</p></div></div>';
                $(".form").append($msg);
                $("#data").val('');

                // iniciar el código ajax
                $.ajax({
                    url: 'chatbot.php',
                    type: 'POST',
                    data: 'text=' + $value,
                    success: function(result) {
                        $replay = '<div class="bot-inbox inbox"><div class="icon"><i class="fas fa-user"></i></div><div class="msg-header"><p>' + result + '</p></div></div>';
                        $(".form").append($replay);
                        // cuando el chat baja, la barra de desplazamiento llega automáticamente al final
                        $(".form").scrollTop($(".form")[0].scrollHeight);
                    }
                });
            });
        });
    </script>

        <!-- ESTE ES EL BOTON DEL CHATBOT SLIDE -->
        <div class="chat-btn">
            <img src="<%= request.getContextPath() %>/Img/Circle-icons-chat.svg.png" alt="chat box icon btn">
        </div>
    
    <script>
        $(document).ready(() => {
            $(".chat-btn").click(() => {
            $(".wrapper").slideToggle("slow")
        })
        })
    </script>



<!-- FIN DEL CHATBOT  -->









<!-- PIE DE PAGINA FOOTER-->

    <footer>

        <div class="container__footer">
            <div class="box__footer">
                <div class="logo">
                    <img src="<%= request.getContextPath() %>/Img/LogoOficial1.jpg" height="180px" alt="">
                </div>
            </div>
            <div class="box__footer">
                <h2>Catalogo</h2>
                <a href="hombres.jsp">Ropa de Hombres</a>
                <a href="mujeres.jsp">Ropa de Mujeres</a>
                <a href="niños.jsp">Ropa de Niños</a>
                <a href="niñas.jsp">Ropa de Niñas</a>
            </div>

            <div class="box__footer">
                <h2>Compañia</h2>
                <a href="#">Acerca de</a>
                <a href="#">Trabajos</a>
                <a href="#">Procesos</a>
                <a href="#">Servicios</a>              
            </div>

            <div class="box__footer">
                <h2>Redes Sociales</h2>
                <a href="#"> <i class="fab fa-facebook-square"></i> Facebook</a>
                <a href="#"><i class="fab fa-twitter-square"></i> Twitter</a>
                <a href="#"><i class="fab fa-linkedin"></i> Linkedin</a>
                <a href="#"><i class="fab fa-instagram-square"></i> Instagram</a>
            </div>

        </div>

        <div class="box__copyright">
            <hr>
            <p>Todos los derechos reservados © 2023 <b>Cloth Shop</b></p>
        </div>
    </footer>







    <script src="https://kit.fontawesome.com/41bcea2ae3.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
