# coding=utf-8
import unittest
from mock import Mock


class MockCase(unittest.TestCase):
    """Test the infrastructure."""
    # see https://docs.python.org/dev/library/unittest.mock.html

    # duck type Foo
    # parse(String) returns boolean

    def test_mock(self):
        # arrange
        foo = Mock()

        def stub(value):
            if value == "false":
                return False
        foo.parse.side_effect = stub

        # act
        foo.parse("abc");

        # assert
        foo.parse.assert_called_with("abc")


if __name__ == '__main__':
    unittest.main()
