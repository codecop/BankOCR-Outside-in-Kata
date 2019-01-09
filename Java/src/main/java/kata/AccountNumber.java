package kata;

/**
 * Value object for account numbers.
 */
public class AccountNumber {

   private static final String ACCOUNT_NUMBER_FORMAT = "\\d{9}";

   private final String number;

   public AccountNumber(String number) {
      if (number == null || !number.matches(ACCOUNT_NUMBER_FORMAT)) {
         throw new IllegalArgumentException(number);
      }
      this.number = number;
   }

   @Override
   public boolean equals(Object obj) {
      if (this == obj) {
         return true;
      }
      if (obj == null || getClass() != obj.getClass()) {
         return false;
      }

      AccountNumber other = (AccountNumber) obj;
      return number.equals(other.number);
   }

   @Override
   public int hashCode() {
      return number.hashCode();
   }

   @Override
   public String toString() {
      return number;
   }
}
