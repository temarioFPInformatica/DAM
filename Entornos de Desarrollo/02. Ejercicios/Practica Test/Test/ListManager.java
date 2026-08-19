public class ListManager {
    Object[] miLista;
    ListManager() {
        miLista = new Object[0];
    }
    public Object mostrarElemento (int indice){
        if (indice < 0 || indice >= miLista.length) {
            throw new IndexOutOfBoundsException("Indice fuera de rango");
        }
        return miLista[indice];
    }
    public void agregarElemento(Object obj) {
        Object[] aux = new Object[miLista.length+1];
        for (int i = 0; i < miLista.length; i++) {
            aux[i] = miLista[i];
        }
        aux[miLista.length] = obj;
        miLista = aux;
    }
    public void eliminarElemento(Object obj) {
        Object[] aux = new Object[miLista.length-1];
        for (int i = 0; i < miLista.length; i++) {
            aux[i] = miLista[i];
        }
        aux[miLista.length] = obj;
        miLista = aux;
    }
    public void eliminarElemento (int indice) {
        if ((indice<0) || (indice>=miLista.length)) {
            throw new IndexOutOfBoundsException("Índice fuera de rango");
        }
        Object[] aux = new Object[miLista.length-1];
        for (int i = 0, j = 0; i < miLista.length; i++) {
            if(i!=indice) {
                aux[j++]=miLista[i];
            }
        }
        miLista = aux;
    }
    public boolean estaVacia () {
        return (miLista.length==0);
    }
}
