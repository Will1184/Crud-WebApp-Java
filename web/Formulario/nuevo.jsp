
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% 
	if (session.getAttribute("usuario") == null) {
		request.setAttribute("mensaje", "Debe autenticarse para ingresar al sistema");
		pageContext.forward("../login.jsp");
	}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Formulario/css/StyleNuevo.css" type="text/css"/>
         <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,700,1,200" />
        <title>Registro</title>
    </head>
    <body>
        <header id="back">
            <a href="controller?accion=null"><span class="material-symbols-outlined back">arrow_back_ios_new</span></a> 
         </header>
        <div class="principal">
            <header>
                <h1>REGISTER</h1>
            </header>

  <!-- Creacion de los input -->
  <form action="controller?accion=insertar" method="POST" id="formulario" autocomplete="off" class="form">
    <!-- Input que almacena el primer Nombre-->
    <label for="firstName">FIRTS NAME</label>
    <input type="text" name="firstName" id="firstName" placeholder="Primer nombre">
    <br>
    <!-- Input que alamacena el segundo Nombre -->
    <label for="secondName">SECOND NAME</label>
    <input type="text" name="secondName" id="secondName" placeholder="Segundo nombre">
    <br>
    <!-- Input que almacena el primer Apellido-->
    <label for="lastName1"> FIRST LAST NAME</label>
    <input type="text" name="lastName1" id="lastName1" placeholder="Primer apellido">
    <br>
    <!-- Input que almacena el primer Apellido-->
    <label for="lastName2">SECOND LAST NAME</label>
    <input type="text" name="lastName2" id="lastName2" placeholder="Segundo apellido ">
    <br>
    <!-- Input que almacena la edad de la persona-->
    <label for="age">AGE</label>
    <input type="number" name="age" id="age" placeholder="0">
    <br>
    <!-- Input que almacena el email de la persona-->
    <label for="email">EMAIL</label>
    <input type="email" name="email" id="email" placeholder="Usuario@gmail.com">
    <br>
    <!-- Input que almacena el el numero de la persona -->
    <label for="phone">PHONE</label>
    <input type="tel" name="phone" id="phone" placeholder="0000-0000">
    <br>
    <!-- Select que almacena la posicion en el campo de futbol de la persona-->
    <label for="position">POSITION</label>
    <select name="position" id="position">
        <!-- Se selecciona por defecto el valor posicion que no alamacena nada-->
        <option selected value="none">Posicion</option>
        <option value="Portero">Portero</option>
        <option value="Central">Central</option>
        <option value="Carrilero">Carrilero</option>
        <option value="Libero">Libero</option>
        <option value="Lateral">Lateral</option>
        <option value="Pivote">Pivote</option>
        <option value="Interior">Interior</option>
        <option value="Volante">Volante</option>
        <option value="Mediapunta">Media Punta</option>
        <option value="Extremo">Extremo</option>
        <option value="Delantero Centro">Delantero Centro</option>
        <option value="Segund oDelantero">Segundo Delantero</option>
    </select>
    <!-- Boton que ejecuta el codigo de javaScript que almacenara los datos localmente-->
    <button type="submit" id="guardar">SEND</button> 
  </form>
 </div>
</body>
</html>

