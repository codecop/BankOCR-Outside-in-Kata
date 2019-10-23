<?php
namespace Test\Kata;

/**
 * Shortcut methods to get input test data->
 */
class Input
{

    public static function allDigits()
    {
        return self::read("one_to_nine.txt");
    }

    public static function onlyZeroes()
    {
        return self::read("only_zeroes.txt");
    }

    public static function onlyOnes()
    {
        return self::read("only_ones.txt");
    }

    public static function onlyTwos()
    {
        return self::read("only_twos.txt");
    }

    public static function onlyThrees()
    {
        return self::read("only_threes.txt");
    }

    public static function onlyFours()
    {
        return self::read("only_fours.txt");
    }

    public static function onlyFives()
    {
        return self::read("only_fives.txt");
    }

    public static function onlySixes()
    {
        return self::read("only_sixes.txt");
    }

    public static function onlySevens()
    {
        return self::read("only_sevens.txt");
    }

    public static function onlyEights()
    {
        return self::read("only_eights.txt");
    }

    public static function onlyNines()
    {
        return self::read("only_nines.txt");
    }

    public static function twoLines()
    {
        return self::read("two_lines.txt");
    }

    private static function read($fileName)
    {
        $path = "test/resources/" . $fileName;
        return file($path, FILE_IGNORE_NEW_LINES);
    }

}
