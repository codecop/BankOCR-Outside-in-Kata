package kata;

import static org.hamcrest.core.Is.is;
import static org.hamcrest.core.IsEqual.equalTo;
import static org.junit.Assert.assertEquals;

import org.hamcrest.MatcherAssert;
import org.junit.Test;

/**
 * Test the JUnit infrastructure.
 */
public class JUnit4Test {

    @Test
    public void shouldAssertPlainJUnit() {
        assertEquals(2, 1 + 1);
    }

    @Test
    public void shouldAssertWithHamcrestCore() {
        MatcherAssert.assertThat(1 + 1, is(equalTo(2)));
    }

}
