package kata;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;

import java.util.Arrays;
import java.util.List;

import org.junit.Test;

public class AccountNumberTest {

    @Test
    public void shouldBeEqualInList() {
        List<AccountNumber> accountNumbers = Arrays.asList(new AccountNumber("123456789"));

        assertEquals(1, accountNumbers.size());
        assertEquals(new AccountNumber("123456789"), accountNumbers.get(0));
    }

    @Test
    public void shouldNotBeEqual() {
        assertNotEquals(new AccountNumber("123456789"), new AccountNumber("123456788"));
    }

    @Test
    public void shouldListNumberAsString() {
        AccountNumber accountNumber = new AccountNumber("123456789");

        assertEquals("123456789", accountNumber.toString());
    }

    @Test(expected = IllegalArgumentException.class)
    public void shouldValidateNumberLength() {
        new AccountNumber("12345678");
    }

    @Test(expected = IllegalArgumentException.class)
    public void shouldValidateNumber() {
        new AccountNumber("12345678n");
    }

}
