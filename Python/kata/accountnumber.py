# coding=utf-8
import re


class AccountNumber(object):
    """Value object for account numbers."""

    def __init__(self, number):
        account_number_format = r'^\d{9}$'
        if not number or not re.match(account_number_format, number):
            raise ValueError(number)

        self._number = number

    def __eq__(self, other):
        if isinstance(other, AccountNumber):
            return self._number == other._number
        return False

    def __hash__(self):
        return hash(self._number)

    def __repr__(self):
        return 'AccountNumber({!r})'.format(self._number)

    def __str__(self):
        return self._number
