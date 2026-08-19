import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * Las vulnerabilidades de autenticación y autorización pueden surgir cuando 
 * --> cualquiera conozca las palabras que actúan como contraseña
 * Esto puede conducir a --> la posibilidad de la exposición de la información
 */

public class Authorization extends HttpServlet {

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {
    String usernamee = request.getParameter("username");
    String password = request.getParameter("password");
    // Código vulnerable
    if (usernamee.equals("admin") && password.equals("password")) {
      // permitir el acceso al área de administración
    } else {
      // denegar el acceso al área de administración
    }
  }
}
/*
 * Utiliza un marco sólido de autenticación y autorización como Spring Security. Spring Security
 * proporciona un conjunto completo de herramientas para implementar la autenticación y la
 * autorización de forma segura. Esto incluye funciones como hashes de contraseñas, gestión de
 * sesiones, control de acceso basado en roles, etc.
 */
