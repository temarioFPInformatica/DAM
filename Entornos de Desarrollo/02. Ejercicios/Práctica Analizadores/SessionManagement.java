import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/*
 * Las vulnerabilidades en la gestión de sesiones se producen cuando --> no se valida adecuadamente
 *  la autenticación del usuario antes de establecer la sesión o cuando se almacenan mal los datos necesarios
 * Esto puede dar lugar a ataques como --> suplantación de sesiones, la revelación de 
 *  información confidencial o la manipulación de datos de sesión por un atacante.
 */

public class SessionManagement extends HttpServlet {

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {
    HttpSession iniciarSesion = request.getSession();
    String username = (String) iniciarSesion.getAttribute("username");

    // Imprimimos en consola
    System.out.println("Datos: " + username);
  }
}
/*
 * Utiliza técnicas de gestión de sesiones seguras, como --> el uso de tokens de sesión de larga 
 * duración o la implementación de medidas contra ataques de suplantación de identidad, 
 * como la fijación de sesión y la validación de la integridad de la sesión
 */

