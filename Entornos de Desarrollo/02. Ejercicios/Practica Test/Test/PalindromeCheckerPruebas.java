import org.junit.Assert;
import org.junit.Test;
public class PalindromeCheckerPruebas {
    @Test
    public void testPalindromeChecker() {
        PalindromeChecker check = new PalindromeChecker();
        Assert.assertEquals(Boolean.valueOf(true), check.esPalindromo("eevee"));
    }
}
