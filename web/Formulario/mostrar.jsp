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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Formulario/css/StyleMostrar.css" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,700,1,200" />
        <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
        <title>Mostrar Datos</title>
    </head>

    <body onload="startTime()">
        <header>        
            <nav class="navegacion">            
            <ul id="nav-options">                              
                         <li id="search-list">
                            <form action="controller?accion=buscar" method="POST">
                             <input type="search" name="busqueda" id="search" placeholder="Busqueda">
                             <button type="submit" class="btn-search"><span class="material-symbols-outlined search">search</span>
                            </button> 
                             </form>                           
                         </li>                                                             
                </ul>
                <ul id="nav-options">                        
                    <li class="links">
                        <a href="controller?accion=null">
                            <span class="material-symbols-outlined home">home</span> Home</a>
                    </li>               
                    <li class="btn-menu">
                        <span class="material-symbols-outlined menu">menu</span>
                     </li>  
                     <li class="remove-btn-menu">
                        <span class="material-symbols-outlined close-menu">
                            close
                            </span>
                     </li>                                                  
                </ul>
            </nav>                
    </header>         
    <div id="clocks">
        <div class="digitalClock">                
            <br>            
            <div id="clock">                
            </div>
           <br>
        </div>
    </div>     
        <section>
           
            <nav class="table-options">
                 <ul>                   
                    <li><button class="btn-new"><a href="controller?accion=nuevo" ><span class="material-symbols-outlined add">add</span> ADD</a></button></li>
                    <li><button class="btn-filter"><span class="material-symbols-outlined filter">filter_alt</span> FILTER</button></li>      
                   
                </ul>    
                <ul class="options-filter">
                    <div  class="btn close-filter">
                        <span class="material-symbols-outlined btn-close-filter">close</span>
                    </div>  
                     <form action="controller?accion=filtrar" method="POST">
                        <li>
                            <p>Nombre</p> 
                             <button class="btn-filter-action" name="filterValue" value="1"><span class="material-symbols-outlined arrow-up">
                                keyboard_arrow_up
                                </span></button>
                             <button class="btn-filter-action" name="filterValue" value="2"><span class="material-symbols-outlined arrow-down">
                                keyboard_arrow_down
                                </span></button>                                                                                      
                          </li>
                          <li>
                             <p>Apellido</p> 
                             <button class="btn-filter-action" name="filterValue" value="3"><span class="material-symbols-outlined arrow-up">
                                keyboard_arrow_up
                                </span></button>
                             <button class="btn-filter-action" name="filterValue" value="4"><span class="material-symbols-outlined arrow-down">
                                keyboard_arrow_down
                                </span></button>  
                           </li>
                           <li>
                              <p>Edad</p>                                
                              <button class="btn-filter-action" name="filterValue" value="5"><span class="material-symbols-outlined arrow-up">
                                keyboard_arrow_up
                                </span></button>
                             <button class="btn-filter-action" name="filterValue" value="6"><span class="material-symbols-outlined arrow-down">
                                keyboard_arrow_down
                                </span></button>                                  
                           </li>
                           <li>
                              <p>Id</p>
                              <button class="btn-filter-action" name="filterValue" value="7"><span class="material-symbols-outlined arrow-up">
                                keyboard_arrow_up
                                </span></button>
                             <button class="btn-filter-action" name="filterValue" value="8"><span class="material-symbols-outlined arrow-down">
                                keyboard_arrow_down
                                </span></button>                                                                                           
                           </li>
                           <li>
                            <p>Posicion</p> 
                            <button class="btn-filter-action" name="filterValue" value="9"><span class="material-symbols-outlined arrow-up">
                                keyboard_arrow_up
                                </span></button>
                             <button class="btn-filter-action" name="filterValue" value="10"><span class="material-symbols-outlined arrow-down">
                                keyboard_arrow_down
                                </span></button>                                                                                       
                           </li>                             
                     </form>                          
                </ul>                                                       
            </nav>                          
            <div id="nav-menu">
                <ul class="nav-menu hide">              
                    <h1>Menu</h1>                            
                    <li>
                        <a href="controller?accion=save"> <span class="material-symbols-outlined save">
                            Save                            
                            </span>&nbsp; Save Cvs</a>                               
                    </li> 
                     <li>
                         <a href="${pageContext. request.contextPath}/Formulario/archivos/csv/Reporte.csv" download> <span class="material-symbols-outlined download">
                            Download
                            </span>&nbsp; Download Cvs</a>                               
                    </li> 
                    <li>
                        <span class="btn-email">
                            <span class="material-symbols-outlined send-email">
                                mail
                        </span>&nbsp; Send Email
                    </span>                              
                                              
                    </li> 
                   <li>                    
                    <a href=""><span class="material-symbols-outlined setting">
                        settings
                        </span>&nbsp; Setting</a>                    
                   </li> 
                   <li>
                    <a href="login?tipo=cerrarSesion">
                        <span class="material-symbols-outlined logout">Logout</span> &nbsp;Logout</a>
                   </li>                                         
              </ul>   
           </div>            
                                    
        <table class="table">             
        <thead>
            <tr>
                <th>ID</th>
                <th>NOMBRES</th>                                
                <th>APELLIDOS</th>
                <th>EDAD</th>
                <th>EMAIL</th>
                <th>TELEFONO</th>
                <th>POSICION</th>
                <th>ACCIONES</th>                                
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
                        <button class="modificar"><a href="controller?accion=modificar&id=<c:out value="${persona.id}" />"><span class="material-symbols-outlined edit">edit</span>&nbsp; EDIT</a></button>
                        <button class="eliminar"><span class="material-symbols-outlined delete">delete_forever</span> DELETE</button>
                        <button class="email"><span class="material-symbols-outlined mail">mail</span> SEND</button>
                    </td>                    
                </tr> 
                <!-- Notificacion De Confirmacion a Eliminar Dato -->
                  <div class="alert hide">
                    <span class="material-symbols-outlined question_mark" >question_mark</span> 
                    <span class="msg">¿Quiere eliminar este registro?</span>
                    <span class="btn confirmation">
                         <a href="controller?accion=eliminar&id=<c:out value="${persona.id}" />"><span class="material-symbols-outlined check">check</span></a><p>confirmation</p>
                    </span>    
                    <span  class="btn close">
                    <span class="material-symbols-outlined btn-close-delete">close</span><p>Cancel</p>
                    </span>              
                  </div>                                                                                                         
            </c:forEach>
        </tbody>                
    </table>    
    <!--Cuadro De Envio de email-->
    <div class="alert-send-email hide">
        <span  class="btn-close-send-email">
            <span class="material-symbols-outlined btn-close-send-email">close</span>
        </span> 
        <form action="message?accion=send" method="post" id="form-email">
            <label for="toEmail" >To</label>
            <input type="email" name="toEmail" id="" required> 
            <label for="fromEmail">From</label>
            <input type="email" name="fromEmail" id=""required>
            <label for="subject">Subjetc</label>
            <input type="text" name="subject" id="">
            <textarea name="message" id="textMessage" cols="30" rows="10" required></textarea>
            <button type="submit" id="enviar-email">Enviar</button>
          </form>  
    </div>
     
 <div>
    <p class="numeros-registros">
        Cant. Registros 
        <%
            int registros= (int)request.getAttribute("numRegistros");		                                                
        %>
        <%=registros %>
    </p>    
 </div>                  
        </section>         
            <script src="${pageContext. request.contextPath}/Formulario/js/Mostrar.js"></script>
    </body>    
</html>



