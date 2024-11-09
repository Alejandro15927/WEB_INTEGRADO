<%-- 
    Document   : hombres
    Created on : 27 oct. 2024, 02:17:16
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
        <center><h1>Verano 2023 - Ropa Hombres</h1></center>
    </div>
   
    <section class="contenedor">
      <!-- Contenedor de elementos -->
      <div class="contenedor-items">
          <div class="item">
              <span class="titulo-item">CASACA INDEX PARA HOMBRE NEW CABO</span>
              <img src="<%= request.getContextPath() %>/Img/HOMBRES/Hombre1.jpeg" alt="" class="img-item">
              <span class="precio-item">S/148.50 soles</span>
              <h2>Talla S-M-L</h2>
              <button class="boton-item">Agregar al Carrito</button>
          </div>
          <div class="item">
              <span class="titulo-item">BERMUDA MARQUIS PARA HOMBRE ALGODÓN</span>
              <img src="<%= request.getContextPath() %>/Img/HOMBRES/Hombre2.jpeg" alt="" class="img-item">
              <span class="precio-item">S/59.99 soles</span>
              <h2>Talla S-M-L</h2>
              <button class="boton-item">Agregar al Carrito</button>
          </div>
          <div class="item">
              <span class="titulo-item">POLO MAUI PARA HOMBRE</span>
              <img src="<%= request.getContextPath() %>/Img/HOMBRES/Hombre3.jpeg" alt="" class="img-item">
              <span class="precio-item">S/24.99 soles</span>
              <h2>Talla S-M-L</h2>
              <button class="boton-item">Agregar al Carrito</button>
          </div>
          <div class="item">
            <span class="titulo-item">Abrigo Jeans</span>
            <img src="<%= request.getContextPath() %>/Img/HOMBRES/ABRIGO JEANS.png" alt="" class="img-item">
            <span class="precio-item">S/200.00 soles</span>
            <h2>Talla S-M-L</h2>
            <button class="boton-item">Agregar al Carrito</button>
        </div>
        <div class="item">
          <span class="titulo-item">Abrigo Marquis Mont</span>
          <img src="<%= request.getContextPath() %>/Img/HOMBRES/ABRIGO MARQUIS MONT.png" alt="" class="img-item">
          <span class="precio-item">S/250.00 soles</span>
          <h2>Talla S-M-L</h2>
          <button class="boton-item">Agregar al Carrito</button>
      </div>
      <div class="item">
          <span class="titulo-item">Camisa manga larga cloudbreak</span>
          <img src="<%= request.getContextPath() %>/Img/HOMBRES/CAMISA MANGA LARGA CLOUDBREAK.png" alt="" class="img-item">
          <span class="precio-item">S/90.00 soles</span>
          <h2>Talla S-M-L</h2>
          <button class="boton-item">Agregar al Carrito</button>
      </div>
      <div class="item">
          <span class="titulo-item">Casaca kenneth stevens</span>
          <img src="<%= request.getContextPath() %>/Img/HOMBRES/CASACA KENNETH STEVENS.png" alt="" class="img-item">
          <span class="precio-item">S/60.00 soles</span>
          <h2>Talla S-M-L</h2>
          <button class="boton-item">Agregar al Carrito</button>
      </div>
      <div class="item">
          <span class="titulo-item">Pantalon Dockers casual </span>
          <img src="<%= request.getContextPath() %>/Img/HOMBRES/PANTALON DOCKERS CASUAL.png" alt="" class="img-item">
          <span class="precio-item">S/109.00 soles</span>
          <h2>Talla S-M-L</h2>
          <button class="boton-item">Agregar al Carrito</button>
      </div>
      <div class="item">
          <span class="titulo-item">Pantalon Norton Drill</span>
          <img src="<%= request.getContextPath() %>/Img/HOMBRES/PANTALON NORTON DRILL.png" alt="" class="img-item">
          <span class="precio-item">S/135.00 soles</span>
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
