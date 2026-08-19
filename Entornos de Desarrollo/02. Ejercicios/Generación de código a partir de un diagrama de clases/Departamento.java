import java.util.ArrayList;

public class Departamento {
    
    //Atributos / arrays de nuestra clase
    private String nombreCentro;
    private String profesorJefeDepartamento;
    ArrayList<Profesor> profesores;
    ArrayList<Modulo> modulo;

    public Departamento(String nombreCentro, String profesorJefeDepartamento) {
        this.nombreCentro = nombreCentro;
        this.profesorJefeDepartamento = profesorJefeDepartamento;
        profesores = new ArrayList<Profesor>();
        modulo = new ArrayList<Modulo>();
    }
    
    public String getNombreCentro() {
        return nombreCentro;
    }

    public String getProfesorJefeDepartamento() {
        return profesorJefeDepartamento;
    }

    public void añadirProfesor(String nombre, String especialidad, String departamento, String modulo) {
        Profesor nuevoProfesor = new Profesor(nombre, especialidad, departamento, modulo);
        profesores.add(nuevoProfesor);
    }

    public void eliminarProfesor(String nombre,  String especialidad, String departamento, String modulo) {
        for (int i = 0; i < profesores.size(); i++) {
            if ((profesores.get(i).getNombre().equals(nombre)) &&
                profesores.get(i).getEspecialidad().equals(especialidad) &&
                profesores.get(i).getDepartamento().equals(departamento) &&
                profesores.get(i).getModulo().equals(modulo)) {
                profesores.remove(i);
            }
        }
    }
    
    public Profesor obtenerProfesor(int posicion) {
        for (int i = 0; i < profesores.size(); i++) {
            if (i==posicion) {
                return profesores.get(i);
            }
        }
        return null;
    }

    public Object[] obtenerTodosProfesores() {
        Object[] profesoresArray = new Object[profesores.size()];
        profesoresArray = profesores.toArray();
        return profesoresArray;
    }

    @Override
    public String toString() {
        return "Departamento [profesores=" + profesores + "]";
    }

    
}