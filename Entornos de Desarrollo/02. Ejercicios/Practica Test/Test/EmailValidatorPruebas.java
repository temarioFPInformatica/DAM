import org.junit.Test;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertFalse;

public class EmailValidatorPruebas {

    @Test
    public void validEmailTest() {
        assertTrue(EmailValidator.Email("pacoboflores@gmail.com"));
        assertTrue(EmailValidator.Email("salguero777@yahoo.com"));
    }

    @Test
    public void invalidEmailTest() {
        assertFalse(EmailValidator.Email("NOEnosabenvil"));
        assertFalse(EmailValidator.Email("chema@.com"));
        assertFalse(EmailValidator.Email("pacopacopaco.com"));
        assertFalse(EmailValidator.Email("salgüero@dominio_promedio"));
    }

    @Test
    public void edgeCasesTest() {
        assertFalse(EmailValidator.Email(null));
        assertFalse(EmailValidator.Email(""));
        assertFalse(EmailValidator.Email("   "));
    }
}


