<%-- 
    Document   : mostrar
    Created on : 23 sep. 2022, 14:48:42
    Author     : brand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Datos</title>
    </head>
    <body>
        <a href="PersonasController?accion=nuevo">Nuevo Registro </a>  
        <table border="1" width="80%">
             
        <thead>
            <tr>
                 <th>Id</th>
                <th>Primer nombre</th>
                <th>segundo nombre</th>
                <th>Primer Apellido</th>
                <th>Segundo Apellido</th>
                <th>Edad</th>
                <th>Correo Electronico</th>
                <th>Telefono</th>
                <th>Posicion</th>
                
            </tr>
        </thead>
        <tbody>
            <c:forEach var="persona" items="${lista}">
                <tr>
                    <td><c:out value="${persona.id}" /> </td>
                    <td><c:out value="${persona.primerNombre}" /> </td> 
                    <td><c:out value="${persona.segundoNombre}" /> </td>
                    <td><c:out value="${persona.primerApellido}" /> </td>
                    <td><c:out value="${persona.segundoApellido}" /> </td>
                    <td><c:out value="${persona.edad}" /> </td>
                    <td><c:out value="${persona.correoElectronico}" /> </td>
                    <td><c:out value="${persona.telefono}" /> </td>
                    <td><c:out value="${persona.posicion}" /> </td>
                    
                    <td><a href="PersonasController?accion=modificar&id=<c:out value="${persona.id}" />">Modificar</td>
                    <td><a href="PersonasController?accion=eliminar&id=<c:out value="${persona.id}" />">Eliminar</td>
                </tr> 
            </c:forEach>
        </tbody>
    </table>
    </body>
</html>
