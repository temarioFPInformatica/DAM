import org.junit.Assert;
import org.junit.Test;
public class CalculatorPruebas {
    @Test
    public void testSuma() {
        Calculator calc = new Calculator();
        Assert.assertEquals(Integer.valueOf(5), calc.suma(3,2));
    }
    @Test
    public void testResta() {
        Calculator calc = new Calculator();
        Assert.assertEquals(Integer.valueOf(1), calc.resta(3,2));
    }
    @Test
    public void testMultiplicacion() {
        Calculator calc = new Calculator();
        Assert.assertEquals(Integer.valueOf(6), calc.multiplicación(3,2));
    }
    @Test
    public void testDivision() {
        Calculator calc = new Calculator();
        Assert.assertEquals(Integer.valueOf(1), calc.división(3,2));
    }
}
