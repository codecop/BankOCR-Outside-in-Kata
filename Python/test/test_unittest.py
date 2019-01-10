# coding=utf-8
import unittest

import hamcrest


class UnitTestCase(unittest.TestCase):
    """Test the unittest infrastructure."""
    # see https://docs.python.org/dev/library/unittest.html

    def test_plain_unittest(self):
        self.assertEqual(2, 1 + 1)

    def test_hamcrest_matchers(self):
        # see https://github.com/hamcrest/PyHamcrest
        hamcrest.assert_that(1 + 1, hamcrest.equal_to(2))


if __name__ == '__main__':
    unittest.main()
