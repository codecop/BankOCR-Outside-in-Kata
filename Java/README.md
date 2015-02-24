# BankOCR #

BankOCR Code Kata, initial setup for Java focusing on outside-in development.

About the kata: http://codingdojo.org/cgi-bin/index.pl?KataBankOCR

## Assignment ##

You work for a bank, which has a machine to assist in reading letters.
The machine scans the paper documents, and produces a file with a
number of entries which each look like this:

    ····_··_·····_··_··_··_··_·
    ··|·_|·_||_||_·|_···||_||_|
    ··||_··_|··|·_||_|··||_|·_|
    ···························

Each entry is 4 lines long, each line has 27 characters. The first 3
lines contain an account number written using pipes and underscores,
and the fourth line is blank. Each account number should have 9 digits,
all of which should be in the range 1-9.

Write a program that can take this file and parse it into actual account numbers.

**Don't Focus on Getting it Done. Focus on Doing It Perfectly.**

### License ###
[New BSD License](http://opensource.org/licenses/bsd-license.php), see `license.txt` in repository.
