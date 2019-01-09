using Org.Codecop.Hello;
using Xunit;

namespace Org.Codecop.Hello.Tests
{
    /// <summary>
    /// Test the xUnit infrastructure.
    /// See https://xunit.github.io/
    /// </summary>
    public class XUnitTest
    {

        [Fact]
        public void ShouldAssertPlainXUnit()
        {
            Assert.Equal(2, 1 + 1);
        }
    }
}
