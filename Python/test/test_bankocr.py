# coding=utf-8
import unittest

from kata.bankocr import AccountNumber, BankOcr
from test import input


class GuidingTestCase(unittest.TestCase):

    def test_parse_ocr_line(self):
        # TODO failing test, start here
        # guiding test from outside in as starting point.
        # a) ignore this test
        # b) or stub everything in the BankOcr constructor
        # c) or let it be red until the end
        bank_ocr = BankOcr()

        account_numbers = bank_ocr.parse(input.all_digits())

        self.assertEquals(1, len(account_numbers))
        self.assertEquals(AccountNumber("123456789"), account_numbers[0])


if __name__ == '__main__':
    unittest.main()
