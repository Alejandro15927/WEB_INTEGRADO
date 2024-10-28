<%-- 
    Document   : login
    Created on : 28 oct. 2024, 14:11:49
    Author     : USER
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <link rel="stylesheet" href="<%= request.getContextPath() %>/css/bootstrap.css">
   <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/style-login.css">
   <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
   <link href="https://tresplazas.com/web/img/big_punto_de_venta.png" rel="shortcut icon">
   <title>Inicio de sesión</title>
</head>

<body>
   <div class="container">
      <div class="img">
         <img src="<%= request.getContextPath() %>/Img/LogoOficial1.jpg">
      </div>
      <div class="login-content">
         <form method="post" action="Login">
            <img src="<%= request.getContextPath() %>/Img/avatar.svg">
            <h2 class="title">BIENVENIDO</h2>

            <% if (request.getParameter("error") != null) { %>
               <p style="color: red;">Usuario o contraseña incorrectos.</p>
            <% } %>

            <div class="input-div one">
               <div class="i">
                  <i class="fas fa-user"></i>
               </div>
               <div class="div">
                  <h5>Usuario</h5>
                  <input id="correo" type="text" class="input" name="correo" required>
               </div>
            </div>
            <div class="input-div pass">
               <div class="i">
                  <i class="fas fa-lock"></i>
               </div>
               <div class="div">
                  <h5>Contraseña</h5>
                  <input type="password" id="input" class="input" name="password" required>
               </div>
            </div>
            <div class="view">
               <div class="fas fa-eye verPassword" onclick="vista()" id="verPassword"></div>
            </div>

            <div class="text-center">
               <a class="font-italic isai5" href="">Olvidé mi contraseña</a>
               <a class="font-italic isai5" href="registro-login.jsp">Registrarse</a>
            </div>
            <input name="btningresar" class="btn" type="submit" value="INICIAR SESION">
         </form>
      </div>
   </div>

   <script src="<%= request.getContextPath() %>/js-login/fontawesome.js"></script>
   <script src="<%= request.getContextPath() %>/js-login/main.js"></script>
   <script src="<%= request.getContextPath() %>/js-login/main2.js"></script>
   <script src="<%= request.getContextPath() %>/js-login/jquery.min.js"></script>
   <script src="<%= request.getContextPath() %>/js-login/bootstrap.js"></script>
   <script src="<%= request.getContextPath() %>/js-login/bootstrap.bundle.js"></script>

</body>
</html>
