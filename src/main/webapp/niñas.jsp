<%-- 
    Document   : niñas
    Created on : 28 oct. 2024, 13:46:00
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/estilo.css">
    <script src="<%= request.getContextPath() %>/JS/app.js" async></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>Cloth Shop</title>
</head>
<body>
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


    <br><br><br>
        <center><h1>Verano 2023 - Ropa Niñas</h1></center>
    </div>
   
    <section class="contenedor">
      <!-- Contenedor de elementos -->
      <div class="contenedor-items">
          <div class="item">
              <span class="titulo-item">POLO HARVEST PARA NIÑA MANGA LARGA ALGODÓN DOBLE</span>
              <img src="<%= request.getContextPath() %>/Img/NIÑAS/nina3.jpeg" alt="" class="img-item">
              <span class="precio-item">S/29.99 soles</span>
              <h2>Talla S-M-L</h2>
              <button class="boton-item">Agregar al Carrito</button>
          </div>
          <div class="item">
              <span class="titulo-item">CASACA HARVEST PARA NIÑA LIGHT</span>
              <img src="<%= request.getContextPath() %>/Img/NIÑAS/nina2.jpeg" alt="" class="img-item">
              <span class="precio-item">S/67.50 soles</span>
              <h2>Talla S-M-L</h2>
              <button class="boton-item">Agregar al Carrito</button>
          </div>
          <div class="item">
              <span class="titulo-item">CONJUNTO HARVEST PARA NIÑA SET RIB</span>
              <img src="<%= request.getContextPath() %>/Img/NIÑAS/Nina1.jpeg" alt="" class="img-item">
              <span class="precio-item">S/59.99 soles</span>
              <h2>Talla S-M-L</h2>
              <button class="boton-item">Agregar al Carrito</button>
          </div>
          <div class="item">
            <span class="titulo-item">Casaca harvest block</span>
            <img src="<%= request.getContextPath() %>/Img/NIÑAS/CASACA HARVEST BLOCK.png" alt="" class="img-item">
            <span class="precio-item">S/70.00 soles</span>
            <h2>Talla S-M-L</h2>
            <button class="boton-item">Agregar al Carrito</button>
        </div>
        <div class="item">
          <span class="titulo-item">Polera Revup con capucha</span>
          <img src="<%= request.getContextPath() %>/Img/NIÑAS/POLERA REVUP CON CAPUCHA.png" alt="" class="img-item">
          <span class="precio-item">S/90.00 soles</span>
          <h2>Talla S-M-L</h2>
          <button class="boton-item">Agregar al Carrito</button>
      </div>
      <div class="item">
          <span class="titulo-item">Pijama Index Polar Vibes</span>
          <img src="<%= request.getContextPath() %>/Img/NIÑAS/PIJAMA INDEX POLAR VIBES.png" alt="" class="img-item">
          <span class="precio-item">S/124.00 soles</span>
          <h2>Talla S-M-L</h2>
          <button class="boton-item">Agregar al Carrito</button>
      </div>
      <div class="item">
          <span class="titulo-item">Polo index algodon</span>
          <img src="<%= request.getContextPath() %>/Img/NIÑAS/POLO INDEX ALGODON.png" alt="" class="img-item">
          <span class="precio-item">S/30.00 soles</span>
          <h2>Talla S-M-L</h2>
          <button class="boton-item">Agregar al Carrito</button>
      </div>
      <div class="item">
          <span class="titulo-item">Jean pionier jogger</span>
          <img src="<%= request.getContextPath() %>/Img/NIÑAS/JEAN PIONIER JOGGER.png" alt="" class="img-item">
          <span class="precio-item">S/120.00 soles</span>
          <h2>Talla S-M-L</h2>
          <button class="boton-item">Agregar al Carrito</button>
      </div>
      <div class="item">
          <span class="titulo-item">Poncho Harvest tejido Flecos</span>
          <img src="<%= request.getContextPath() %>/Img/NIÑAS/PONCHO HARVEST TEJIDO FLECOS.png" alt="" class="img-item">
          <span class="precio-item">S/55.00 soles</span>
          <h2>Talla S-M-L</h2>
          <button class="boton-item">Agregar al Carrito</button>
      </div>
  
  
      </div>
      <!-- Carrito de Compras -->
      <div class="carrito" id="carrito">
          <div class="header-carrito">
              <h2>Tu Carrito</h2>
          </div>
  
          <div class="carrito-items">
          </div>
          <div class="carrito-total">
              <div class="fila">
                  <strong>Tu Total</strong>
                  <span class="carrito-precio-total">
                      $120.000,00
                  </span>
              </div>
              <button class="btn-pagar">Pagar <i class="fa-solid fa-bag-shopping"></i> </button>
          </div>
      </div>
  </section>


</body>
</html>
