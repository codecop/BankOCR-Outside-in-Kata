using Org.Codecop.Hello;
using Xunit;

namespace Org.Codecop.Hello.Tests
{
    /**
    * Test the xUnit infrastructure.
    */
    public class XUnitTest
    {

        [Fact]
        public void ShouldAssertPlainXUnit()
        {
            Assert.Equal(2, 1 + 1);
        }
    }
}
