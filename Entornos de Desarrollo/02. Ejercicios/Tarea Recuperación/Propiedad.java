public class Propiedad {
    private int id;
    private double area;
    private int nhabitaciones;
    private String vecindario;
    private int precio;
    public Propiedad(int i, double a, int r, String n, int p) {
        id = i;
        area = a;
        nhabitaciones = r;
        vecindario = n;
        precio = p;
    }
    public int getId() {
        return id;
    }
    public double getArea() {
        return area;
    }
    public int getNHabitaciones() {
        return nhabitaciones;
    }
    public String getVecindario() {
        return vecindario;
    }
    public int getPrice() {
        return precio;
    }
    public String toString() {
        return id + ":\ten " + getVecindario() + " tiene " + getNHabitaciones() + " sobre " + getArea() + " m2";
    }
}
