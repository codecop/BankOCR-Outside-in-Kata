# BankOCR Outside-in TDD Kata Setup #

[About the Assignment and the Constraint](../README.md).

## BankOCR Kata JavaScript Setup ##

This is a JavaScript [npm](https://www.npmjs.com/) project.
It is compatible with new versions of JavaScript (ES6+).
[Mocha](https://mochajs.org/) and [Sinon.JS](http://sinonjs.org/)
are provided as dependencies.

* Verify your Node installation with `npm --version`.
* Run `npm install` to install the required packages.
* Run `npm test` to verify your setup and run the tests. You should see a test failure.

### Where to start ###

There is a failing guiding test `test/guiding_test.js`,
which you can use as starting point. It tests the `src/bankocr.js`,
which contains the empty, outside interface of the API you need to create.

There are different example inputs for tests in `test/resources`.
