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
        <link rel="stylesheet" href="${pageContext. request.contextPath}/Formulario/css/StyleMostrar.css" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,700,1,200" />
        <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
        <title>Mostrar Datos</title>
    </head>

    <body>
        <header>        
            <nav class="navegacion">
                <ul id="search-list">  
                         <li><form action="controller?accion=buscar" method="POST">
                             <input type="search" name="busqueda" id="search" placeholder="Busqueda">
                             <button type="submit" class="btn-search"><span class="material-symbols-outlined search">search</span></button> 
                             </form>                           
                         </li>                                       
                </ul>
                <ul id="links">                
                <li><a href="login?tipo=cerrarSesion"><span class="material-symbols-outlined logout">logout</span></a></li>            
                </ul>
            </nav>        
    </header>    
        
        <section>
            <nav class="options">
                <ul>
                    <li><button class="btn-new"><a href="controller?accion=nuevo" ><span class="material-symbols-outlined add">add</span> ADD</a></button></li>
                    <li><button class="btn-filter"><a href="controller?accion=filtrar"><span class="material-symbols-outlined filter">filter_alt</span> FILTER</a> </button>
                  
                </li>                                                     
                </ul>               
                            
</nav>
            
        <table class="table">             
        <thead>
            <tr>
                <th>Id</th>
                <th>Nombres</th>                                
                <th>Apellidos </th>
                <th>Edad</th>
                <th>Correo Electronico</th>
                <th>Telefono</th>
                <th>Posicion</th>
                <th>Accion</th>                                
            </tr>
        </thead>
        <tbody>
            <c:forEach var="persona" items="${lista}">
                <tr>
                    <td><c:out value="${persona.id}" /> </td>
                    <td><c:out value="${persona.primerNombre}" />&nbsp;  
                        <c:out value="${persona.segundoNombre}" /> </td>
                    <td><c:out value="${persona.primerApellido}" />&nbsp;
                        <c:out value="${persona.segundoApellido}" /> </td>
                    <td><c:out value="${persona.edad}" /> </td>
                    <td><c:out value="${persona.correoElectronico}" /> </td>
                    <td><c:out value="${persona.telefono}" /> </td>
                    <td><c:out value="${persona.posicion}" /> </td>                    
                    <td>
                        <button class="modificar"><a href="controller?accion=modificar&id=<c:out value="${persona.id}" />"><span class="material-symbols-outlined edit">edit</span>&nbsp; Editar</a></button>
                        <button class="eliminar"><span class="material-symbols-outlined delete">delete_forever</span> Eliminar</button>
                    </td>
                    
                </tr> 
                <div class="alert hide">
                    <span class="material-symbols-outlined question_mark" >question_mark</span> 
                    <span class="msg">¿Quiere eliminar este registro?</span>
                    <span class="btn confirmation">
                         <a href="controller?accion=eliminar&id=<c:out value="${persona.id}" />"><span class="material-symbols-outlined check">check</span></a> 
                    </span>    
                    <span  class="btn close">
                    <span class="material-symbols-outlined btn-delete">close</span>
                    </span>              
                </div>
                           
                    
            </c:forEach>
        </tbody>        
    </table>                           
        </section>        
           <script src="${pageContext. request.contextPath}/Formulario/js/Mostrar.js"></script>
    </body>    
</html>


