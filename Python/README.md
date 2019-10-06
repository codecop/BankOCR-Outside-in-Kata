# BankOCR Outside-in TDD Kata Setup

[About the Assignment and the Constraint](../README.md).

## BankOCR Kata Python Setup

This is a Python PIP project.
It is compatible with both Python 2 and 3.
[unittest](https://docs.python.org/dev/library/unittest.html) and [unittest.mock](https://docs.python.org/dev/library/unittest.mock.html)
are provided by Python 3.

* Verify your Python installation with `python -V`.
* Run `pip install -r requirements.txt` to install the required packages.
* Run `run_tests` (or `python -m unittest discover test`) to verify your setup and run the tests. You should see a test failure.

### Where to start

There is a failing guiding test `test/test_guiding.py`,
which you can use as starting point. It tests the `kata/bankocr.py`,
which contains the empty, outside interface of the API you need to create.

There are different example inputs for tests in `test/resources`.
