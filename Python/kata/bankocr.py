# coding=utf-8
from kata.accountnumber import AccountNumber


class BankOcr(object):
    """Example for the outside interface of the API we need to create."""

    def __init__(self):
        pass

    def parse(self, raw_lines):
        # TODO return an array of AccountNumber
        raise NotImplementedError("not implemented")
