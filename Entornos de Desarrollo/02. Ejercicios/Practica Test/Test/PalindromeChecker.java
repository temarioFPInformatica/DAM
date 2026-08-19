public class PalindromeChecker {
    public boolean esPalindromo(String cadena) {
        String cadenaFormateada = cadena.replaceAll("\\s", "").toLowerCase();
        int longitud = cadenaFormateada.length();
        for (int i = 0; i < longitud / 2; i++) {
            if (cadenaFormateada.charAt(i) != cadenaFormateada.charAt(longitud - 1 - i)) {
                return false;
            }
        }
        return true;
    }
}
