<%-- 
    Document   : modificar
    Created on : 20 sep. 2022, 16:27:36
    Author     : brand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
    </head>
    <body>

        <form action="PersonasController?accion=actualizar" method="POST"  autocomplete="off" >
            <input id="id" name="id" type="hidden" value="<c:out value="${persona.id}"/>"/> 
        <p>           
            <!-- Input que almacena el primer Nombre-->
            <label for="firstName">Primer Nombre</label>
            <input type="text" name="firstName" id="firstName" value="<c:out value="${persona.primerNombre}"/>" >
            &nbsp;
            <!-- Input que alamacena el segundo Nombre -->
            <label for="secondName">Segundo Nombre</label>
            <input type="text" name="secondName" id="secondName"  value="<c:out value="${persona.segundoNombre}"/>" >
        </p>
        <p>
            <!-- Input que almacena el primer Apellido-->
            <label for="lastName1">Primer Apellido</label>
            <input type="text" name="lastName1" id="lastName1"  value="<c:out value="${persona.primerApellido}"/>" >
            &nbsp;
            <!-- Input que almacena el primer Apellido-->
            <label for="lastName2">Segundo Apellido</label >
            <input type="text" name="lastName2" id="lastName2"  value="<c:out value="${persona.segundoApellido}"/>">
            &nbsp;
            <!-- Input que almacena la edad de la persona-->
            <label for="age">Edad</label>
            <input type="number" name="age" id="age"  value="<c:out value="${persona.edad}"/>" >
        </p>
        <P>
         <!-- Input que almacena el email de la persona-->
            <label for="email">Correo Electronico</label>
            <input type="email" name="email" id="email"  value="<c:out value="${persona.correoElectronico}"/>" >
            &nbsp;
            <!-- Input que almacena el el numero de la persona -->
            <label for="phone">Numero de telefono</label>
            <input type="tel" name="phone" id="phone"  value="<c:out value="${persona.telefono}"/>" >
  
        </P>
        <p>
            <!-- Select que almacena la posicion en el campo de futbol de la persona-->
            <label for="position">Posicion de juego</label>
            <select name="position" id="position" value="<c:out value="${persona.posicion}"/>" >
                <!-- Se selecciona por defecto el valor posicion que no alamacena nada-->
                <option selected value="none">Posicion</option>
                <option value="portero">Portero</option>
                <option value="central">Central</option>
                <option value="carrilero">Carrilero</option>
                <option value="libero">Libero</option>
                <option value="lateral">Lateral</option>
                <option value="pivote">Pivote</option>
                <option value="interior">Interior</option>
                <option value="volante">Volante</option>
                <option value="mediapunta">Media Punta</option>
                <option value="extremo">Extremo</option>
                <option value="delanteroCentro">Delantero Centro</option>
                <option value="segundoDelantero">Segundo Delantero</option>
            </select>
        </p>
        <!-- Boton que ejecuta el codigo de javaScript que almacenara los datos localmente-->
       <button type="submit" id="guardar">Enviar</button>
       </form>
    </body>
</html>
