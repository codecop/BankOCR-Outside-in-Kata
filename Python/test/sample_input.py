"""Shortcut methods to get input test data."""
import os


def all_digits():
    return _read("one_to_nine.txt")


def only_zeroes():
    return _read("only_zeroes.txt")


def only_ones():
    return _read("only_ones.txt")


def only_twos():
    return _read("only_twos.txt")


def only_threes():
    return _read("only_threes.txt")


def only_fours():
    return _read("only_fours.txt")


def only_fives():
    return _read("only_fives.txt")


def only_sixes():
    return _read("only_sixes.txt")


def only_sevens():
    return _read("only_sevens.txt")


def only_eights():
    return _read("only_eights.txt")


def only_nines():
    return _read("only_nines.txt")


def two_lines():
    return _read("two_lines.txt")


def _read(file_name):
    _dir_path = os.path.dirname(os.path.realpath(__file__))
    with open(_dir_path + "/resources/" + file_name) as text_file:
        return text_file.readlines()
