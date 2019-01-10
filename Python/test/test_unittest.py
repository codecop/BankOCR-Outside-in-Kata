# coding=utf-8
from hamcrest import *
import unittest


class UnitTestCase(unittest.TestCase):
    """Test the unittest infrastructure."""

    def test_plain_unittest(self):
        # see https://docs.python.org/dev/library/unittest.html
        self.assertEqual(2, 1 + 1)

    def test_hamcrest_matchers(self):
        # see https://github.com/hamcrest/PyHamcrest
        assert_that(1 + 1, equal_to(2))


if __name__ == '__main__':
    unittest.main()
