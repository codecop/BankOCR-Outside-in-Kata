using NUnit.Framework;

namespace Kata.Tests
{
    [TestFixture]
    public class BankOcrTest
    {
        [Test]
        public void ShouldParseOcrLine()
        {
            // TODO failing test, start here
            // guiding test from outside in as starting point.
            // a) ignore this test
            // b) or stub everything in the BankOcr constructor
            // c) or let it be red until the end

            var bankOcr = new BankOcr();

            var accountNumbers = bankOcr.Parse(Input.AllDigits());

            Assert.AreEqual(1, accountNumbers.Count);
            Assert.AreEqual(new AccountNumber("123456789"), accountNumbers[0]);
        }

    }
}
