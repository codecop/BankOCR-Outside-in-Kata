# BankOCR #

[BankOCR Code Kata](http://codingdojo.org/cgi-bin/index.pl?KataBankOCR), initial setup
for C# focusing on Outside-In development.

## Assignment: BankOCR ##

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

## Constraint: Outside-In ##

In Outside-In (London school, top-down or "mockist TDD") you build the
system from the "outside-in", following the user interaction through
all the parts of the system. You start with the interactions and collaborators
upfront (especially those at top levels), mocking necessary dependencies (or creating
fake implementations). With every finished component, you move to the previously
mocked collaborators and start with TDD again there, creating
actual implementations (which, even though used, were not needed before
thanks to abstractions). See [Emily Bache's article on Outside-In development](http://coding-is-like-cooking.info/2013/04/outside-in-development-with-double-loop-tdd/)
for a discussion of Outside-In both with London school and classic TDD.

## Where to start ##

This is a .NET Core 2.0 project.
There is a failing [xUnit](https://xunit.github.io/) guiding test `BankOcrTest.cs`,
which you can use as starting point. It tests the `BankOcr.cs`,
which contains the empty, outside interface of the API you need to create.
There are different example inputs in `BankOcr-Kata.Tests/Resources`.
[Moq](https://github.com/Moq/moq) is provided in the dependencies in case 
you want to use a mocking library.

## Other languages ##
* [Java](https://bitbucket.org/pkofler/bankocr-kata-setup)
* [Javascript with Jasmine](https://bitbucket.org/carlosble/bankocr-kata) by Carlos Ble
* [Blog post with Python integration test](http://technivore.org/posts/2013/12/23/coding-kata-bank-ocr.html) by Matthew Rich

### License ###
[New BSD License](http://opensource.org/licenses/bsd-license.php), see `license.txt` in repository.
