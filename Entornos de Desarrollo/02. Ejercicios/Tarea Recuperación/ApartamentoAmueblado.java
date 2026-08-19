public class ApartamentoAmueblado extends Apartamento {
    private int calidadMuebles;
    public ApartamentoAmueblado(int i, double a, int r, String n, int p, int f, boolean k, int q) {
        super(i, a, r, n, p, f, k);
        calidadMuebles = q;
    }
    public int getCalidadMuebles() {
        return calidadMuebles;
    }
    public String toString() {
        return "Apartmento #" + super.toString() + (tieneParking() ? " con un parking" : "") +
            " situado en la planta " + getPlanta() + " amueblado con " +
            (calidadMuebles == 1 ? "excelentes" : (calidadMuebles == 2 ? "muy buenos" : (calidadMuebles == 3 ? "buenos" :
                (calidadMuebles == 4 ? "regulares" : "malos")))) + " muebles";
    }
}
