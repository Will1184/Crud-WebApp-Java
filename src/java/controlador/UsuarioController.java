
package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Usuario;
import modelo.UsuarioDAO;

/**
 *
 * @author brand
 */
@WebServlet("/login")
public class UsuarioController extends HttpServlet {

  private static final long serialVersionUID=1L;
  
  @Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String tipo = request.getParameter("tipo");
		
		if ("iniciarSesion".equals(tipo)) {
			this.iniciarSesion(request, response);
		} else if ("cerrarSesion".equals(tipo)) {
			this.cerrarSesion(request, response);
		}
	}
	
	private void iniciarSesion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre = request.getParameter("user");
		String clave = request.getParameter("pass");

		UsuarioDAO modelo = new UsuarioDAO();
		Usuario usuario = modelo.inicioSesion(nombre, clave);

		if (usuario == null) {
                    request.setAttribute("mensaje", "Error nombre de usuario y/o clave");
		    request.getRequestDispatcher("login.jsp").forward(request, response);
			
		} else {
                    HttpSession sesion = request.getSession();
			sesion.setAttribute("usuario", usuario);
			response.sendRedirect("controller");
			
		}
	}
	
	private void cerrarSesion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession();
		sesion.invalidate();
		
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
}




   