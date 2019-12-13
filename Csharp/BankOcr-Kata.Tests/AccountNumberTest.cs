using System;
using System.Collections.Generic;
using Xunit;

namespace Kata.Tests
{
    public class AccountNumberTest
    {
        [Fact]
        public void ShouldBeEqualInList()
        {
            var accountNumbers = new List<AccountNumber>() { new AccountNumber("123456789") };

            Assert.Single(accountNumbers);
            Assert.Equal(new AccountNumber("123456789"), accountNumbers[0]);
        }

        [Fact]
        public void ShouldNotBeEqual()
        {
            Assert.NotEqual(new AccountNumber("123456789"), new AccountNumber("123456788"));
        }

        [Fact]
        public void ShouldListNumberAsString()
        {
            var accountNumber = new AccountNumber("123456789");

            Assert.Equal("123456789", accountNumber.ToString());
        }

        [Fact]
        public void ShouldValidateNumberLength()
        {
            Assert.Throws<ArgumentException>(() => new AccountNumber("12345678"));
        }

        [Fact]
        public void ShouldValidateNumber()
        {
            Assert.Throws<ArgumentException>(() => new AccountNumber("12345678n"));
        }
    }
}
