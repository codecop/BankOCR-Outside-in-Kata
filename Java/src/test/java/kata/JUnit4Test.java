package kata;

import static org.hamcrest.core.Is.is;
import static org.hamcrest.core.IsEqual.equalTo;
import static org.hamcrest.text.IsEqualIgnoringCase.equalToIgnoringCase;
import static org.junit.Assert.assertEquals;

import org.junit.Assert;
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
        Assert.assertThat(1 + 1, is(equalTo(2)));
    }

    @Test
    public void shouldAssertWithHamcrestLibrary() {
        Assert.assertThat("codecop", is(equalToIgnoringCase("CodeCop")));
    }

}
