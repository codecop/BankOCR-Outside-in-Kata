using System;
using System.Text.RegularExpressions;

namespace Kata
{
    /// <summary>
    /// Value object for account numbers.
    /// </summary>
    public class AccountNumber
    {
        private readonly string number;

        public AccountNumber(string number)
        {
            var accountNumberFormat = new Regex(@"^\d{9}$");
            if (number == null || !accountNumberFormat.IsMatch(number))
            {
                throw new ArgumentException(number);
            }
            this.number = number;
        }

        public override bool Equals(object obj)
        {
            if (ReferenceEquals(this, obj))
            {
                return true;
            }
            if (ReferenceEquals(null, obj) || obj.GetType() != this.GetType())
            {
                return false;
            }
            var that = (AccountNumber)obj;
            return this.number.Equals(that.number);
        }

        public override int GetHashCode()
        {
            return number.GetHashCode();
        }

        public override string ToString()
        {
            return number;
        }
    }
}
