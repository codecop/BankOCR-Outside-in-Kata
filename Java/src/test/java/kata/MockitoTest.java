package kata;

import org.junit.Test;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;

/**
 * Test the infrastructure.
 */
public class MockitoTest {

    @Test
    public void shouldAssertWithMockito() {
        // arrange
        Runnable runner = mock(Runnable.class);
        // act
        runner.run();
        // assert
        verify(runner).run();
    }

}
