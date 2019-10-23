using NUnit.Framework;

namespace Kata.Tests
{
    /// <summary>
    /// Test the NUnit infrastructure.
    /// See https://github.com/nunit/docs/wiki/NUnit-Documentation
    /// </summary>
    [TestFixture]
    public class NUnitTest
    {

        [Test]
        public void ShouldAssertPlainNUnit()
        {
            Assert.AreEqual(2, 1 + 1);
        }

        [Test]
        public void ShouldAssertWithNUnitMatchers() {
            Assert.That(1 + 1, Is.EqualTo(2));
        }
    }
}
