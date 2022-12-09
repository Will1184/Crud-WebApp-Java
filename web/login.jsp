<%-- 
    Document   : login
    Created on : 27 nov. 2022, 20:05:25
    Author     : brand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Formulario/Css/StyleLogin.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,700,1,200" />
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <title>Iniciar Sesion</title>
</head>
<body>
    <div class="principal">
        <header>
            <h1>Iniciar Sesion</h1>
        </header>
       
        <main>
            <form action="login"  method="post" class="login">
                <input type="hidden" name="tipo" value="iniciarSesion" />
                <!-- Input que almacena elusuario-->
              
                <input type="text" name="user" id="user" placeholder="Username">
                <br>
                <!-- Input que almacena el password-->
           
                <input type="password" name="pass" id="pass" placeholder="Password">
            <br>
            <button type="submit" id="enviar" value="Iniciar sesión">Iniciar sesion</button> 
            </form>
        </main>
        <footer>
            <p>
		<%
                String resultado=null;
		resultado = (String)request.getAttribute("mensaje");
		if (resultado != null) { %>
                
                   <div class="alert hide">
                    <span class="material-symbols-outlined" id="error">error</span>
                    <span class="msg">Usuario y/o contraseña invalidas</span>
                    <span  class="close-btn">
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
            <h3>¿No recuerda su contraseña? </h3>
        </footer>
    </div>
</body>
<footer>
</footer>
   
</html>

