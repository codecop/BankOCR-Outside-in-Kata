"use strict";
const fs = require('fs');

function read(fileName) {
    fs.readFileSync(__dirname + '/resources/' + fileName, 'UTF-8');
}

/**
 * Shortcut methods to get input test data.
 */
export const Input = {

    allDigits: () => read("one_to_nine.txt"),

    onlyZeroes: () => read("only_zeroes.txt"),
    onlyOnes: () => read("only_ones.txt"),
    onlyTwos: () => read("only_twos.txt"),
    onlyThrees: () => read("only_threes.txt"),
    onlyFours: () => read("only_fours.txt"),
    onlyFives: () => read("only_fives.txt"),
    onlySixes: () => read("only_sixes.txt"),
    onlySevens: () => read("only_sevens.txt"),
    onlyEights: () => read("only_eights.txt"),
    onlyNines: () => read("only_nines.txt"),

    twoLines: () => read("two_lines.txt"),
    onesAndTwosIn2Lines: () => read("ones_and_twos_in_2_lines.txt"),
};
