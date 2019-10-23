# BankOCR Outside-in TDD Kata Setup

[About the Assignment and the Constraint](../README.md).

## BankOCR Kata PHP Setup

This is a [Composer](https://getcomposer.org/) project.
The programming language is PHP 5.
[PHPUnit](https://phpunit.de/) and [Mockery](https://github.com/mockery/mockery)
are provided as dependencies.

* Verify your PHP installation with `php -v`.
* Run `./vendor/bin/phpunit` to verify your setup and run the tests. You should see a test failure.

### Where to start

There is a failing guiding test `test/Kata/GuidingTest.php`,
which you can use as starting point. It tests the `src/Kata/BankOcr.php`,
which contains the empty, outside interface of the API you need to create.

There are different example inputs for tests in `test/resources`.
