# BankOCR Outside-in TDD Kata Setup

[About the Assignment and the Constraint](../README.md).

## BankOCR Kata Scheme Setup

This is a Gambit and Chicken Scheme compatible project.
The programming language is R5RS Scheme.
`assert-r5rs.scm` - a xUnit test framework in Scheme style -
is provided in the `test` folder.

* Run `r5rs test/scheme-unit-test.scm` to verify your setup and run a test.

### Where to start

There is a failing guiding test `test/guiding_test.scm`,
which you can use as starting point. It tests the `bank-ocr.scm`,
which contains the empty, outside interface of the API you need to create.

There are different example inputs for tests in `test/sample-input.scm`.
