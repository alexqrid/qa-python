import pytest


@pytest.fixture()
def prepare():
    print('prepare')


def test1_positive():
    assert 6 // 2 == 3


def test2_positive():
    assert '!' * 3 == '!!!'


def test3_negative():
    assert 8 // 4 == 3


def test4_negative():
    assert '*' * 4 == '***'
