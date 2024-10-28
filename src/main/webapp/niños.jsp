<%-- 
    Document   : niños
    Created on : 27 oct. 2024, 02:30:08
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
    <link rel="stylesheet" href="../css/estilo.css">
    <script src="../JS/app.js" async></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>Cloth Shop</title>
</head>
<body>
    <div class="head">
        <div class="logo">
            <a href="index.html"><img src="../Img/LogoOficial1.jpg" height="190px" width="280px" alt="logito"></a>

        </div>

        <nav class="navbar">
            <a href="index.html">Inicio</a>
            <a href="Nosotros.html">Nosotros</a>
            <a href="Contacto.php">Contacto</a>
            <a href="#">Catalogo</a>
            <a href="Registrar.html">Registrate</a>
            <a href="login.php"><i class="material-icons" style="font-size:25px">shopping_basket</i></a>
            
        </nav>

    </div>

    <br><br><br>
        <center><h1>Verano 2023 - Ropa Niños</h1></center>
    </div>
   

    <section class="contenedor">
      <!-- Contenedor de elementos -->
      <div class="contenedor-items">
          <div class="item">
              <span class="titulo-item">CONJUNTO HARVEST POLO MANGA LARGA Y BUZO</span>
              <img src="../Img/NIÑOS/Nino1.jpeg" alt="" class="img-item">
              <span class="precio-item">S/49.99 soles</span>
              <h2>Talla S-M-L</h2>
              <button class="boton-item">Agregar al Carrito</button>
          </div>
          <div class="item">
              <span class="titulo-item">POLO HARVEST PARA NIÑO ALGODÓN MANGA CORTA</span>
              <img src="../Img/NIÑOS/Nino2.jpeg" alt="" class="img-item">
              <span class="precio-item">S/19.99 soles</span>
              <h2>Talla S-M-L</h2>
              <button class="boton-item">Agregar al Carrito</button>
          </div>
          <div class="item">
              <span class="titulo-item">PANTALÓN DE BUZO HARVEST PARA NIÑO</span>
              <img src="../Img/NIÑOS/Nino3.jpeg" alt="" class="img-item">
              <span class="precio-item">S/24.99 soles</span>
              <h2>Talla S-M-L</h2>
              <button class="boton-item">Agregar al Carrito</button>
          </div>
          <div class="item">
            <span class="titulo-item">Casaca Harvest light</span>
            <img src="../Img/NIÑOS/CASACA HARVEST LIGHT.png" alt="" class="img-item">
            <span class="precio-item">S/80.00 soles</span>
            <h2>Talla S-M-L</h2>
            <button class="boton-item">Agregar al Carrito</button>
        </div>
        <div class="item">
          <span class="titulo-item">casaca Next padded</span>
          <img src="../Img/NIÑOS/CASACA NEXT PADDED.png" alt="" class="img-item">
          <span class="precio-item">S/90.00 soles</span>
          <h2>Talla S-M-L</h2>
          <button class="boton-item">Agregar al Carrito</button>
      </div>
      <div class="item">
          <span class="titulo-item">Polera con Capucha Harvest</span>
          <img src="../Img/NIÑOS/POLERA CON CAPUCHA HARVEST.png" alt="" class="img-item">
          <span class="precio-item">S/38.00 soles</span>
          <h2>Talla S-M-L</h2>
          <button class="boton-item">Agregar al Carrito</button>
      </div>
      <div class="item">
          <span class="titulo-item">Polera cuello redondo</span>
          <img src="../Img/NIÑOS/POLERA CUELLO REDONDO HARVEST.png" alt="" class="img-item">
          <span class="precio-item">S/40.00 soles</span>
          <h2>Talla S-M-L</h2>
          <button class="boton-item">Agregar al Carrito</button>
      </div>
      <div class="item">
          <span class="titulo-item">pijama Harvest franela game</span>
          <img src="../Img/NIÑOS/PIJAMA HARVEST FRANELA GAME.png" alt="" class="img-item">
          <span class="precio-item">S/70.00 soles</span>
          <h2>Talla S-M-L</h2>
          <button class="boton-item">Agregar al Carrito</button>
      </div>
      <div class="item">
          <span class="titulo-item">Pantalon de buzo Harvest</span>
          <img src="../Img/NIÑOS/PANTALON DE BUZO HARVEST.png" alt="" class="img-item">
          <span class="precio-item">S/50.00 soles</span>
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
