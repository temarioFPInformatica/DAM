import org.junit.Assert;
import org.junit.Test;
public class TemperatureConverterPruebas {
    @Test
    public void testCelsiusFahrenheit() {
        TemperatureConverter temp = new TemperatureConverter();
        Assert.assertEquals(Integer.valueOf(37), temp.deCelsiusFahrenheit(3));
    }
    @Test
    public void testFahrenheitCelsius() {
        TemperatureConverter temp = new TemperatureConverter();
        Assert.assertEquals(Integer.valueOf(-10), temp.deFahrenheitCelsius(14));
    }
}