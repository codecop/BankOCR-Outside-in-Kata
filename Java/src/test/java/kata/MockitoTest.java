package kata;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import org.junit.Test;

/**
 * Test the infrastructure.
 * 
 * @see "https://site.mockito.org/"
 */
public class MockitoTest {

    interface Foo {
        boolean parse(String value);
    }

    @Test
    public void shouldAssertWithMockito() {
        // arrange
        Foo foo = mock(Foo.class);
        when(foo.parse("false")).thenReturn(false);
        // act
        foo.parse("abc");
        // assert
        verify(foo).parse("abc");
    }

}
