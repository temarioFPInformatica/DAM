public class Profesor {

    private String nombre;
    private String especialidad;
    private String departamento;
    private String modulo;
    private boolean jefeDepartamento;

    public Profesor(String nombre, String especialidad, String departamento, String modulo) {
        this.nombre = nombre;
        this.especialidad = especialidad;
        this.departamento = departamento;
        this.modulo = modulo;
        jefeDepartamento = false;
    }

    public boolean esJefe() {
        return jefeDepartamento;
    }

    public String getNombre() {
        return nombre;
    }

    public String getDepartamento() {
        return departamento;
    }

    public String getModulo() {
        return modulo;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    @Override
    public String toString() {
        return "Nombre: " + nombre +
                "\nEspecialidad: " + especialidad + 
                "\nDepartamento: " + departamento +
                "\nModulo: " +modulo;
    }
}