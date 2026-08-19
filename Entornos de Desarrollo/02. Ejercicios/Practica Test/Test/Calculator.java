public class Calculator {
    /**
     * Devuelve la suma de dos números
     * 
     * @param x un número entero
     * @param y el otro número entero
     * @return  la suma de los dos números
     */

    public Integer suma (Integer x, Integer y) {
        return x + y;
    }

    /**
     * Devuelve la resta de dos números
     * 
     * @param x es un número entero
     * @param y es el otro número entero
     * @return la resta de los dos números
     */

    public Integer resta (Integer x, Integer y) {
        return x - y;
    }

    /**
     * Devuelve la multiplicación de dos números
     * 
     * @param x es un número entero
     * @param y es el otro número entero
     * @return la multiplicación de los números
     */

    public Integer multiplicación (Integer x, Integer y) {
        return x * y;
    }

    /**
     * Devuelve la división de dos números
     * 
     * @param x es un número entero
     * @param y es el otro número entero
     * @return la división de los números
     */

    public Integer división (Integer x, Integer y) {
        try {
            return x / y;
        } catch (Exception e) {
            System.out.println("División por cero");
            return null;
        }
        
    }
}
