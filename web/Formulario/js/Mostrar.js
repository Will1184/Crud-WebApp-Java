/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
$('.eliminar').click(function(){
    $('.alert').removeClass("hide");
    $('.alert').addClass("show");   
    $('.alert').addClass("showAlert");                     
});                                            
 $('.btn.confimation').click(function(){
 $('.alert').addClass("hide");
 $('.alert').removeClass("show");
});
$('.btn.close').click(function(){
    $('.alert').addClass("hide");
    $('.alert').removeClass("show");
});


