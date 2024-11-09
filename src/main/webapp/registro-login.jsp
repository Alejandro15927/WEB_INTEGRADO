<%-- 
    Document   : registro-login
    Created on : 8 nov. 2024, 21:34:11
    Author     : USER
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="es"> 
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Formulario Registro</title>
  <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/estilos-registrar.css">
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/bootstrap.css">
</head>
<body>
  <div class="container">

    <div class="form-boton2" >
        <a href="<%= request.getContextPath() %>/index.jsp" ><input type="submit" value="Regresar"></a>
    </div>

    <form id="form" action="Registrar" class="form" method="post" style="width:50vw; min-width:300px;">

      <p class="form-titulo">Regístrate</p>

      <div class="form-input nom_usuario">
        <label class="form-label">Nombres</label>
        <input type="text" id="nom_usuario" name="nom_usuario" value="<%= request.getParameter("nom_usuario") %>">
        <% if (request.getAttribute("errorNom") != null) { %>
          <p class="mensajeError" style="color: red;"><%= request.getAttribute("errorNom") %></p>
        <% } %>
      </div>

      <div class="form-input ape_usuario">
        <label class="form-label">Apellidos</label>
        <input type="text" id="ape_usuario" name="ape_usuario" value="<%= request.getParameter("ape_usuario") %>">
        <% if (request.getAttribute("errorApe") != null) { %>
          <p class="mensajeError" style="color: red;"><%= request.getAttribute("errorApe") %></p>
        <% } %>
      </div>

      <div class="form-input dni">
        <label class="form-label">Dni</label>
        <input type="text" id="dni" name="dni" value="<%= request.getParameter("dni") %>">
        <% if (request.getAttribute("errorDni") != null) { %>
          <p class="mensajeError" style="color: red;"><%= request.getAttribute("errorDni") %></p>
        <% } %>
      </div>

      <div class="form-input telefono">
        <label class="form-label">Telefono</label>
        <input type="text" id="telefono" name="telefono" value="<%= request.getParameter("telefono") %>">
        <% if (request.getAttribute("errorTelefono") != null) { %>
          <p class="mensajeError" style="color: red;"><%= request.getAttribute("errorTelefono") %></p>
        <% } %>
      </div>

      <div class="form-input correo">
        <label class="form-label">Correo</label>
        <input type="text" id="correo" name="correo" value="<%= request.getParameter("correo") %>">
        <% if (request.getAttribute("errorCorreo") != null) { %>
          <p class="mensajeError" style="color: red;"><%= request.getAttribute("errorCorreo") %></p>
        <% } %>
      </div>
      
      <div class="form-input password">
        <label class="form-label">Password</label>
        <input type="password" id="password" name="password" value="<%= request.getParameter("password") %>">
        <% if (request.getAttribute("errorPass") != null) { %>
          <p class="mensajeError" style="color: red;"><%= request.getAttribute("errorPass") %></p>
        <% } %>
      </div>
      
      <div class="form-termsAndConditions termsAndConditions">
        <input type="checkbox" id="termsAndConditions" <%= request.getParameter("termsAndConditions") != null ? "checked" : "" %>>
        <label for="termsAndConditions">He leído y acepto los </label>
        <a href="#">Términos y Condiciones</a>
        <% if (request.getAttribute("errorTerms") != null) { %>
          <p class="mensajeError" style="color: red;"><%= request.getAttribute("errorTerms") %></p>
        <% } %>
      </div>

      <div class="form-boton">
        <button type="submit" class="btn btn-success" name="submit">Registrar</button>
      </div>

      <p class="mensajeCorrecto"></p>
    </form>
  </div>
</body>
</html>
