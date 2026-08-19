public class Apartamento extends Propiedad {
    private int planta;
    private boolean parking;
    public Apartamento(int i, double a, int r, String n, int p, int f, boolean k) {
        super(i, a, r, n, p);
        planta = f;
        parking = k;
    }
    public boolean tieneParking() {
        return parking;
    }
    public int getPlanta() {
        return planta;
    }
    public String toString() {
        return "Apartamento #" + super.toString() + (tieneParking() ? " con un parking" : "") + getPlanta();
    }
}
