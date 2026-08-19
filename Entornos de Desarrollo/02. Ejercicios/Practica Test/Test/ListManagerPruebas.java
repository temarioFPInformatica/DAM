import org.junit.Assert;
import org.junit.Test;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;
public class ListManagerPruebas {
    @Test
    public void testAgregarElementos() {
        ListManager list = new ListManager();
        list.agregarElemento(8);
        list.agregarElemento(false);
        list.agregarElemento("salguero");
        list.agregarElemento(Integer.valueOf(7));
        Assert.assertEquals(false, list.mostrarElemento(1));
    }
    @Test
    public void testEliminarElemento() {
        ListManager list = new ListManager();
        list.agregarElemento(true);
        list.eliminarElemento(true);
        list.agregarElemento(false);
        Assert.assertEquals(false, list.mostrarElemento(0));
    }
    @Test
    public void testEstaVacía() {
        ListManager list = new ListManager();
        assertTrue(list.estaVacia());
        list.agregarElemento(1);
        assertFalse(list.estaVacia());
    }
}