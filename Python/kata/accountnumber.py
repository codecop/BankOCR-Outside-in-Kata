# coding=utf-8


class AccountNumber:
    """Value object for account numbers."""

    def __init__(self, number):
        self._number = number

    def __eq__(self, other):
        if isinstance(other, AccountNumber):
            return self._number == other._number
        return False

    def __str__(self):
        return self._number
