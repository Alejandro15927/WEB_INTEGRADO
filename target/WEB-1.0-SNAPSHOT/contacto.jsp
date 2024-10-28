<%-- 
    Document   : contacto
    Created on : 27 oct. 2024, 02:13:19
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

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

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
            <a href="#">Catalogo</a>
            <a href="registro-login.php">Registrate</a>
            <a href="login.php"><i class="material-icons" style="font-size:25px">shopping_basket</i></a>
        </nav>

    </div>


   <br><br>
    <div class="container-form">
        <div class="info-form">
        <br><br>
            <h4>Cualquier consulta o sugerencia escribirnos a nuestro correo personal de nuestra página
            como tambien puede llamarnos para cualquier información que solicite.</h4> <br>
              
               <a href="#"><i class="fa fa-phone">
              </i>991432498</a>
              <a href="#"><i class="fa fa-envelope">
              </i>ClothSoft@gmail.com</a>
              <a href="#"><i class="fa fa-map-marked"> 
              </i>Lima, Perú</a><br></br>


              <form action="" method="post" enctype="multipart/form-data" style="width:50vw; min-width:300px;">
                <input type="text" name="nombre" placeholder="Tu Nombre" class="campo">
                <input type="email" name="correo" placeholder="Tu Email" class="campo">
                <textarea name="mensaje" placeholder="Tu Mensaje..."></textarea>
                <button type="submit" class="btn-enviar" name="submit">Enviar</button>




            </form>
        </div>
      <div class="mapa">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3900.3839720954775!2d-76.96871478703234!3d-12.154241103349422!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105b9248222ac81%3A0xabdbeb8034b42c70!2sCiudad%20de%20Dios!5e0!3m2!1ses-419!2spe!4v1683287497745!5m2!1ses-419!2spe" width="450" height="550"  style="border-color: brown; border-radius: 40px;  box-shadow: 3px 3px 5px #999;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

      </div>





</body>
</html>
