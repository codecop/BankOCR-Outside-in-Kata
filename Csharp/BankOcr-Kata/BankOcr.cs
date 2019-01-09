using System;
using System.Collections.Generic;

namespace Kata
{
    /// <summary>
    /// Example for the outside interface of the API we need to create.
    /// </summary>
    public class BankOcr
    {

        public IList<AccountNumber> Parse(IEnumerable<string> rawLines)
        {
            throw new NotImplementedException("not implemented");
        }

    }
}
