<%-- 
    Document   : nosotros
    Created on : 27 oct. 2024, 01:21:31
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

    <br><br><br><br><br><br>
    <div class="container-form">
        <div class="info-form">
            <h3>Nosotros </h3><br>
            <h4>Hacemos ropa única inspirada para las almas rebeldes, que buscan marcar la diferencia con su estilo. 
                All rebel souls are welcome.
                <br>
                Nuestra Historia
                <br>
                En el 2023, inspirados en la estética vintage y el movimiento musical y cultural,
                nace una marca peruana y sostenible con una propuesta diferente que busca 
                vestir a una generación joven, independiente e inconforme con lo establecido para hacerlos sentir únicos y libres.
                </h4><br>
              
               <a href="#"><i class="fa fa-phone">
              </i>991432498</a>
              <a href="#"><i class="fa fa-envelope">
              </i>ClothSoft@gmail.com</a>
              <a href="#"><i class="fa fa-map-marked"> 
              </i>Lima, Perú</a><br></br>

              
              

        </div>


        <img style="width: 70%;height: 90%;" src="<%= request.getContextPath() %>/Img/Fondo-Nosotros.jpg">



</body>
</html>
