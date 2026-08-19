public class Agencia {
    private Propiedad[] propiedades;
    public Agencia() {
        propiedades = new Propiedad[100];
        for (int i = 0; i < 100; i++) propiedades[i] = null;
    }
    public void addPropiedad(Propiedad p) {}
    public void delPropiedad(int i) {}
}
