/*
 * Las vulnerabilidades de validación de entradas se producen cuando --> no se valida ni se "sanea" adecuadamente
 *  la entrada de datos proporcionada por el usuario antes de utilizarla en la aplicación.
 * lo que permite --> que los usuarios malintencionados metan datos incorrectos o maliciosos para 
 * vulnerabilizar el código
 */

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Validation extends HttpServlet {

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {
    // Recuperamos los valores de los parámetros de la consulta pero no los validamos
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String message = request.getParameter("message");

    // Imprimimos en consola
    System.out.println(
      "Datos: " + name + ", " + email + ", " + phone + ", " + message
    );
  }
}
/*
 * Validar y "sanear" la entrada del usuario puede ayudar a --> mitigar vulnerabilidades y proteger la información
 * contra posibles ataques
 */
