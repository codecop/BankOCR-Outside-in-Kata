namespace Kata
{
    /**
     * Value object for account numbers.
     */
    public class AccountNumber
    {
        private readonly string number;

        public AccountNumber(string number)
        {
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
            var that = (AccountNumber) obj;
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
