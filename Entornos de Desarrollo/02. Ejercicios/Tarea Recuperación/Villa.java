public class Villa extends Propiedad {
    private boolean piscina;
    private int numCallesAdjacentes;
    public Villa(int i, double a, int r, String n, int p, boolean s, int as) {
        super(i, a, r, n, p);
        piscina = s;
        numCallesAdjacentes = as;
    }
    public boolean tienePiscina() {
        return piscina;
    }
    public int getNumCallesAdjacentes() {
        return numCallesAdjacentes;
    }
    public String toString() {
        return "Villa #" + super.toString() + (tienePiscina() ? " con una piscina" : "") +
            " situado en " + getNumCallesAdjacentes() + " calle" + (getNumCallesAdjacentes() > 1 ? "s" : "");
    }
}
