public class Prueba {
    public static void main(String[] args) {
        CPIFP instituto1 = new CPIFP("Alan Turing", "PTA", 46290);
        Estudiante estudiante1 = new Estudiante("Salguero", 1);
        Departamento departamento1 = new Departamento("Alan Turing", "Soledad");
        Modulo modulo1 = new Modulo("Ciencias", 10);
        Profesor profesor1 = new Profesor("Luis", "Matemáticas", "departamento1", "Ciencias");
        //probar métodos
        System.out.println(profesor1);
        System.out.println(estudiante1);
        departamento1.añadirProfesor("Maria", "Física", "Física", "Termodinámica");
        System.out.println(departamento1);
        instituto1.añadirEstudiante(estudiante1);
        instituto1.añadirDepartamento(departamento1);
        System.out.println(instituto1);
        System.out.println(modulo1);
        System.out.println(instituto1.obtenerEstudiante(1));
        instituto1.eliminarEstudiante(estudiante1);
        Estudiante estudiante2 = new Estudiante("Paco", 3);
        instituto1.añadirEstudiante(estudiante2);
        Estudiante estudiante3 = new Estudiante("Fito", 2);
        instituto1.añadirEstudiante(estudiante3);
        /*
         * La función obtenerTodosEstudiantes se encarga de de agrupar todos los elementos de un
         * instituto, de aquí los paso a un array y los imprimo con un bucle foreach
         */
        Object[] estudiantesArrays = instituto1.obtenerTodosEstudiantes();
        for (Object estudiante: estudiantesArrays) {
            System.out.println(estudiante);
        }
        departamento1.añadirProfesor("Antonio", "HTML", "Programacion", "DAM");
        Object[] profesoresArrays = departamento1.obtenerTodosProfesores();
        for (Object profesor: profesoresArrays) {
            System.out.println(profesor);
        }
    }
}
