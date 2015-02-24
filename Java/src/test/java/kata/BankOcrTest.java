package kata;

import org.junit.Test;

import java.io.IOException;
import java.util.List;

import static kata.Input.allDigits;
import static org.junit.Assert.assertEquals;

public class BankOcrTest {

    @Test
    public void shouldParseOcrLine() throws IOException {
        // TODO failing test, start here
        // guiding test from outside in as starting point.
        // a) ignore this test
        // b) or stub everything in the BankOcr constructor
        // c) or let it be red until the end
        BankOcr bankOcr = new BankOcr();

        List<AccountNumber> accountNumbers = bankOcr.parse(allDigits());

        assertEquals(1, accountNumbers.size());
        assertEquals(new AccountNumber("123456789"), accountNumbers.get(0));
    }


}
