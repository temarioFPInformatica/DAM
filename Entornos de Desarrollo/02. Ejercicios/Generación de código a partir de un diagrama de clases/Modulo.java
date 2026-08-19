public class Modulo {

    private String nombre;
    private int identificador;

    public Modulo(String nombre, int identificador) {
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
        return "Modulo [nombre=" + nombre + ", identificador=" + identificador + "]";
    }

    
}