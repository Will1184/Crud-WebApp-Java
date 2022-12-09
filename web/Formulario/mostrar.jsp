<%-- 
    Document   : mostrar
    Created on : 23 sep. 2022, 14:48:42
    Author     : brand
--%>

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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Formulario/Css/StyleMostrar.css" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,700,1,200" />
        <title>Mostrar Datos</title>
    </head>
<header>
        <div id="navegacion" >
            <nav class="navegacion">
                <ul id="search-list">  
                    <li><input type="search" name="search" id="search" placeholder="Busqueda"></li>
                    <a href="controller?accion=buscar"><span class="material-symbols-outlined search-btn">search</span></a>
                    <a href="controller?accion=filtrar"><span class="material-symbols-outlined search-btn">filter_alt</span></a>
                </ul>
                <ul id="links">
                <li><a href="controller?accion=nuevo" ><span class="material-symbols-outlined add">add</span> </a></li>
                <li><a href="login?tipo=cerrarSesion"><span class="material-symbols-outlined logout">logout</span></a></li>            
                </ul>
            </nav>
        </div>
    </header>
    <body>
        <table class="table">             
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
                <th>Modificar</th>
                <th>Eliminar</th>
                
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
                    
                    <td><button class="modificar"><a href="controller?accion=modificar&id=<c:out value="${persona.id}" />"><span class="material-symbols-outlined edit">edit</span></a></button></td>
                    <td><button class="eliminar"><a href="controller?accion=eliminar&id=<c:out value="${persona.id}" />"><span class="material-symbols-outlined delete">delete_forever</span></a></button></td>
                </tr> 
            </c:forEach>
        </tbody>
    </table>
                    <p>
		<%
                String action=null;
		action = (String)request.getAttribute("mensaje");
		if (action != null) { %>
                
                   <div class="alert hide">
                    <span class="material-symbols-outlined" id="question_mark">question_mark</span>
                    <span class="msg">¿Quiere eliminar?</span>
                    <span  class="close-btn">
                       <span class="material-symbols-outlined">check</span>
                       <span class="material-symbols-outlined">close</span>
                    </span>
                   </div>
                   
            <script>   
                $('.alert').removeClass("hide");
                $('.alert').addClass("show");   
                $('.alert').addClass("showAlert");  
                setTimeout(function(){
                    $('.alert').addClass("hide");
                    $('.alert').removeClass("show");
                },5000);                                    
             </script>       
               <script>
            $('.close-btn').click(function(){
                $('.alert').addClass("hide");
                $('.alert').removeClass("show");
            });
         </script>
             <%	} %>				
        </p>
        
    </body>
</html>
