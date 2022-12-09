<%-- 
    Document   : modificar
    Created on : 20 sep. 2022, 16:27:36
    Author     : brand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% 
	if (session.getAttribute("usuario") == null) {
		request.setAttribute("mensaje", "Debe autenticarse para ingresar al sistema");
		pageContext.forward("../login.jsp");	}

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext. request.contextPath}/Formulario/Css/StyleModificar.css" type="text/css">
         <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,700,1,200" />
        <title>Modificar Registro</title>
    </head>
  <header id="back">
        <a href="controller?accion=null"><span class="material-symbols-outlined back">arrow_back_ios_new</span></a> 
     </header>
    <body>      
<div class="principal">
    <header>
        <h1>Modificar Registro</h1>

    </header>
    
    <form action="controller?accion=actualizar" method="POST"  autocomplete="off" class="form">
    <input id="id" name="id" type="hidden" value="<c:out value="${persona.id}"/>"/> 
     
    <!-- Input que almacena el primer Nombre-->
    <label for="firstName"></label>
    <input type="text" name="firstName" id="firstName" value="<c:out value="${persona.primerNombre}"/>" >

    <br>
    <!-- Input que alamacena el segundo Nombre -->
    <label for="secondName"></label>
    <input type="text" name="secondName" id="secondName"  value="<c:out value="${persona.segundoNombre}"/>" >

<br>
    <!-- Input que almacena el primer Apellido-->
    <label for="lastName1"></label>
    <input type="text" name="lastName1" id="lastName1"  value="<c:out value="${persona.primerApellido}"/>" >
  
    <br>
    <!-- Input que almacena el primer Apellido-->
    <label for="lastName2"></label >
    <input type="text" name="lastName2" id="lastName2"  value="<c:out value="${persona.segundoApellido}"/>">
   
    <br>
    <!-- Input que almacena la edad de la persona-->
    <label for="age"></label>
    <input type="number" name="age" id="age"  value="<c:out value="${persona.edad}"/>" >

<br>
 <!-- Input que almacena el email de la persona-->
    <label for="email"></label>
    <input type="email" name="email" id="email"  value="<c:out value="${persona.correoElectronico}"/>" >
<br>
    <!-- Input que almacena el el numero de la persona -->
    <label for="phone"></label>
    <input type="tel" name="phone" id="phone"  value="<c:out value="${persona.telefono}"/>" >
<br>
    <!-- Select que almacena la posicion en el campo de futbol de la persona-->
    <label for="position"></label>
    <select name="position" id="position" value="<c:out value="${persona.posicion}"/>" >
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
        <option value="Segundo Delantero">Segundo Delantero</option>
    </select>
<!-- Boton que ejecuta el codigo de javaScript que almacenara los datos localmente-->
<button type="submit" id="guardar">Modificar</button>
</form>

</div>
        </body>
</html>
