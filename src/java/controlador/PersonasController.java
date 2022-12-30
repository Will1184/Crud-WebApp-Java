
package controlador;

import java.io.IOException;
import java.sql.*;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Persona;
import modelo.PersonasDAO;
/**
 *
 * @author brand
 */
@WebServlet(name = "PersonasController", urlPatterns = {"/controller"})
public class PersonasController extends HttpServlet {

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            PersonasDAO personasDao= new PersonasDAO();
            String accion;           
            RequestDispatcher dispatcher;
            accion = request.getParameter("accion");
           
            
            if(accion == null|| accion.isEmpty()){
                dispatcher=request.getRequestDispatcher("Formulario/mostrar.jsp");
                List<Persona> listaPersonas = personasDao.listaPersonas();
                int registros=personasDao.numeroRegistro();
                request.setAttribute("lista",listaPersonas);
                request.setAttribute("numRegistros",registros);
            }
            else if( "nuevo".equals(accion)){
                dispatcher=request.getRequestDispatcher("Formulario/nuevo.jsp");
            }else if("insertar".equals(accion)){
                String PrimerNombre=request.getParameter("firstName");
                String SegundoNombre=request.getParameter("secondName");
                String PrimerApellido=request.getParameter("lastName1");
                String SegundoApellido=request.getParameter("lastName2");
                String Edad=request.getParameter("age");
                String CorreoElectronico=request.getParameter("email");
                String Telefono=request.getParameter("phone");
                String Posicion=request.getParameter("position");
                
                Persona persona=new Persona(0,PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, Edad, CorreoElectronico, Telefono, Posicion);
                personasDao.insertar(persona);
                dispatcher=request.getRequestDispatcher("Formulario/mostrar.jsp");
                List<Persona> listaPersonas= personasDao.listaPersonas();
                request.setAttribute("lista",listaPersonas);
                int registros=personasDao.numeroRegistro();                
                request.setAttribute("numRegistros",registros);
          
            } else if( "modificar".equals(accion)){
                dispatcher=request.getRequestDispatcher("Formulario/modificar.jsp");
                 int id= Integer.parseInt(request.getParameter("id"));
                 Persona persona= personasDao.mostrarPersona(id);
                 request.setAttribute("persona",persona);
                
            }else if("actualizar".equals(accion)){    
                int id = Integer.parseInt(request.getParameter("id"));
                String PrimerNombre=request.getParameter("firstName");
                String SegundoNombre=request.getParameter("secondName");
                String PrimerApellido=request.getParameter("lastName1");
                String SegundoApellido=request.getParameter("lastName2");
                String Edad=request.getParameter("age");
                String CorreoElectronico=request.getParameter("email");
                String Telefono=request.getParameter("phone");
                String Posicion=request.getParameter("position");
                
                Persona persona = new Persona(id,PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, Edad, CorreoElectronico, Telefono, Posicion);
                personasDao.actualizar(persona);
                dispatcher=request.getRequestDispatcher("Formulario/mostrar.jsp");
                List<Persona> listaPersonas= personasDao.listaPersonas(); 
                request.setAttribute("lista",listaPersonas);
                int registros=personasDao.numeroRegistro();                
                request.setAttribute("numRegistros",registros);
                
            }else if("eliminar".equals(accion)){                            
                int id= Integer.parseInt(request.getParameter("id"));
                personasDao.eliminar(id);
                dispatcher=request.getRequestDispatcher("Formulario/mostrar.jsp");
                List<Persona> listaPersonas= personasDao.listaPersonas();
                request.setAttribute("lista",listaPersonas);    
                int registros=personasDao.numeroRegistro();                
                request.setAttribute("numRegistros",registros);
            }else if("buscar".equals(accion)){
                 dispatcher=request.getRequestDispatcher("Formulario/mostrar.jsp");                                
                 List<Persona> busquedaPersonas;
                try {
                    String search=request.getParameter("busqueda"); 
                    busquedaPersonas = personasDao.buscar(search);
                    request.setAttribute("lista",busquedaPersonas);
                    int registros=personasDao.numeroRegistro();                
                request.setAttribute("numRegistros",registros);
                } catch (SQLException ex) {
                    Logger.getLogger(PersonasController.class.getName()).log(Level.SEVERE, null, ex);
                }                                  
            } else if("filtrar".equals(accion)){
                 dispatcher=request.getRequestDispatcher("Formulario/mostrar.jsp");                                
                    List<Persona> busquedaPersonas;
                try {
                    int filter=Integer.parseInt(request.getParameter("filterValue")); 
                    busquedaPersonas = personasDao.filtar(filter);
                    request.setAttribute("lista",busquedaPersonas);
                    int registros=personasDao.numeroRegistro();                
                    request.setAttribute("numRegistros",registros);
                } catch (SQLException ex) {
                    Logger.getLogger(PersonasController.class.getName()).log(Level.SEVERE, null, ex);
                } 
             }else if("save".equals(accion)){    
                   dispatcher=request.getRequestDispatcher("Formulario/mostrar.jsp");
                    List<Persona> listaPersonas = personasDao.listaPersonas();
                    request.setAttribute("lista",listaPersonas);
                    int registros=personasDao.numeroRegistro();                
                    request.setAttribute("numRegistros",registros);
                  personasDao.reporte();
             }else{
                dispatcher=request.getRequestDispatcher("Formulario/mostrar.jsp");
                List<Persona> listaPersonas = personasDao.listaPersonas();
                int registros=personasDao.numeroRegistro();
                request.setAttribute("lista",listaPersonas);                                
                request.setAttribute("numRegistros",registros);
            }
            dispatcher.forward(request,response);
        }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request,response); 
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
