public class Estudiante {

    private String nombre;
    private int identificador;

    public Estudiante(String nombre, int identificador) {
        this.nombre = nombre;
        this.identificador = identificador;
    }

    public String getNombre() {
        return nombre;
    }

    public int getIdentificador() {
        return identificador;
    }
    @Override
    public String toString() {
        return "Nombre: " + nombre +
                "\nIdentificador: " + identificador;
    }
}