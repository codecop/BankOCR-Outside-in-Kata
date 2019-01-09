using Xunit;
using Moq;

namespace Kata.Tests
{
    public interface IFoo
    {
        bool Parse(string value);
    }

    /// <summary>
    /// Test the infrastructure.
    /// See https://github.com/Moq/moq4/wiki/Quickstart
    /// </summary>
    public class MoqTest
    {
        [Fact]
        public void shouldAssertWithMoq()
        {
            // arrange
            var foo = new Mock<IFoo>();
            foo.Setup(f => f.Parse("false")).Returns(false);
            // act
            foo.Object.Parse("abc");
            // assert
            foo.Verify(f => f.Parse("abc"));
        }

    }
}
