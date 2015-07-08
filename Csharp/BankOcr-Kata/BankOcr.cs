using System;
using System.Collections.Generic;

namespace Kata
{
    /**
     * Example for the outside interface of the API we need to create.
     */
    public class BankOcr
    {

        public IList<AccountNumber> Parse(IEnumerable<string> rawLines)
        {
            throw new NotImplementedException("not implemented");
        }

    }
}
