# coding=utf-8
import unittest

from kata.accountnumber import AccountNumber


class AccountNumberTestCase(unittest.TestCase):
    def test_equal_in_list(self):
        account_numbers = [AccountNumber("123456789")]

        self.assertEqual(1, len(account_numbers))
        self.assertEqual(AccountNumber("123456789"), account_numbers[0])

    def test_not_equal(self):
        self.assertNotEqual(AccountNumber("123456789"), AccountNumber("123456788"))

    def test_number_as_string(self):
        account_number = AccountNumber("123456789")

        self.assertEqual("123456789", str(account_number))

    def test_repr(self):
        account_number = AccountNumber("123456789")

        self.assertEqual("AccountNumber('123456789')", repr(account_number))

    def test_validate_number_length(self):
        self.assertRaises(ValueError, lambda: AccountNumber("12345678"))

    def test_validate_number(self):
        self.assertRaises(ValueError, lambda: AccountNumber("12345678n"))


if __name__ == '__main__':
    unittest.main()
