using System.Collections.Generic;
using System.IO;

namespace Kata.Tests
{
    /// <summary>
    /// Shortcut methods to get input test data.
    /// </summary>
    public static class Input
    {
        public static IEnumerable<string> AllDigits()
        {
            return Read("one_to_nine.txt");
        }

        public static IEnumerable<string> OnlyZeroes()
        {
            return Read("only_zeroes.txt");
        }

        public static IEnumerable<string> OnlyOnes()
        {
            return Read("only_ones.txt");
        }

        public static IEnumerable<string> OnlyTwos()
        {
            return Read("only_twos.txt");
        }

        public static IEnumerable<string> OnlyThrees()
        {
            return Read("only_threes.txt");
        }

        public static IEnumerable<string> OnlyFours()
        {
            return Read("only_fours.txt");
        }

        public static IEnumerable<string> OnlyFives()
        {
            return Read("only_fives.txt");
        }

        public static IEnumerable<string> OnlySixes()
        {
            return Read("only_sixes.txt");
        }

        public static IEnumerable<string> OnlySevens()
        {
            return Read("only_sevens.txt");
        }

        public static IEnumerable<string> OnlyEights()
        {
            return Read("only_eights.txt");
        }

        public static IEnumerable<string> OnlyNines()
        {
            return Read("only_nines.txt");
        }

        private static IEnumerable<string> Read(string fileName)
        {
            return File.ReadAllLines(Path.Combine(@"Resources", fileName));
        }
    }
}
