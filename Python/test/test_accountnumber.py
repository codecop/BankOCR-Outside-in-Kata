# coding=utf-8
import unittest

from kata.accountnumber import AccountNumber


class AccountNumberTestCase(unittest.TestCase):
    def test_equal(self):
        self.assertEqual(AccountNumber("123456789"), AccountNumber("123456789"))

    def test_not_equal(self):
        self.assertNotEqual(AccountNumber("123456789"), AccountNumber("123456788"))

    def test_number_as_string(self):
        self.assertEqual("123456789", str(AccountNumber("123456789")))

    def test_repr(self):
        self.assertEqual("AccountNumber('123456789')", repr(AccountNumber("123456789")))

    def test_validate_number_length(self):
        self.assertRaises(ValueError, lambda: AccountNumber("12345678"))

    def test_validate_number(self):
        self.assertRaises(ValueError, lambda: AccountNumber("12345678n"))


if __name__ == '__main__':
    unittest.main()
