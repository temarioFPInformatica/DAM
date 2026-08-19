public class TemperatureConverter {
    public Integer deCelsiusFahrenheit (int x) {
        return ((x * 9)/5) + 32;
    }
    public Integer deFahrenheitCelsius (int x) {
        return ((x - 32) * 5) / 9;
    }
}
