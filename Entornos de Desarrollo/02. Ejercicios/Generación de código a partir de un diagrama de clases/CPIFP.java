import java.util.ArrayList;
public class CPIFP {
    private String nombre;
    private String direccion;
    private long telefono;
    private int identificadorEstudiante;
    //Hacer arrayList de los departamentos que hay en el centro
    ArrayList<Departamento> misDptos;
    ArrayList<Estudiante> estudiantes;
    /**
     * Método constructor del CPIFP
     * @param nombre
     * @param direccion
     * @param telefono
     */
    public CPIFP(String nombre, String direccion, long telefono) {
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
        misDptos = new ArrayList<Departamento>();
        estudiantes = new ArrayList<Estudiante>();
    }
    /**
     * Añade un estudiante al centro (1)
     * @param estudiante
     */
    public void añadirEstudiante(Estudiante estudiante) {
        estudiantes.add(estudiante);
    }

    /**
     * Elimina un estudiante del centro (2)
     * @param nombre
     * @return
     */
    public void eliminarEstudiante(Estudiante estudiante) {
        estudiantes.remove(estudiante);
    }

    /**
     * Añade un departamento al centro (3)
     * @param nombre
     */
    public void añadirDepartamento(Departamento departamento ) {
        misDptos.add(departamento);
    }

    /**
     * Elimina un departamento del centro (4)
     * @param departamento
     */
    public void eliminarDepartamento(Departamento departamento) {
        misDptos.remove(departamento);
    }
    
    /**
     * Obtiene un estudiante del centro dado su identificador (5_1)
     * @param nombre
     * @return todos los datos del estudiante
     */
    public Estudiante obtenerEstudiante(String nombre) {
        for (int i = 0; i < estudiantes.size(); i++) {
            if (estudiantes.get(i).getNombre().equals(nombre)) {
                return estudiantes.get(i);
            }
        }
        return null;
    }

    
    /**
     * Método para obtener el todos los datos del estudiante (5_2)
     * @param identificador
     * @return nombre estudiante
     */
    public Estudiante obtenerEstudiante(int identificador) {
        for (int i = 0; i < estudiantes.size(); i++) {
            if ((estudiantes.get(i).getIdentificador()==identificador)) {
                return estudiantes.get(i);
            }
        }
        return null;
    }

    /**
     * Método para obtener todos los datos de un departamento (6)
     * @param profesorJefeDepartamento
     * @return
     */
    public Departamento obtenerDepartamento(String profesorJefeDepartamento) {
        for (int i = 0; i < misDptos.size(); i++) {
            if ((misDptos.get(i).getProfesorJefeDepartamento().equals(profesorJefeDepartamento))) {
                return misDptos.get(i);
            }
        }
        return null;
    }

    /**
     * Método para mostrar todos los estudiantes que están en un instituto (7)
     * @return Todos los estudiantes del instituto
     */
    public Object[] obtenerTodosEstudiantes() {
        Object[] estudiantesArray = new Object[estudiantes.size()];
        estudiantesArray = estudiantes.toArray();
        return estudiantesArray;
    }


    /**
     * Método para mostrar todos los departamentos que están en un instituto (8)
     * @return Todos los departamentos del instituto
     */
    public Object[] obtenerTodosDepartamentos() {
        Object[] departamentosArray = new Object[misDptos.size()];
        departamentosArray = misDptos.toArray();
        return departamentosArray;
    }


    public String getNombre() {
        return nombre;
    }
    public String getDireccion() {
        return direccion;
    }
    public long getTelefono() {
        return telefono;
    }
    public int getIdentificadorEstudiante() {
        return identificadorEstudiante;
    }
    @Override
    public String toString() {
        return "CPIFP [nombre=" + nombre + ", direccion=" + direccion + ", telefono=" + telefono + "]";
    }
}
