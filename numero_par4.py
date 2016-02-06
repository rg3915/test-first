def par(n):
    if n % 2 == 0:
        return True
    return False


def assert_equal(result, expected):
    from sys import _getframe
    msg = 'Fail: Line {} got {} expecting {}'
    if not result == expected:
        current = _getframe()
        caller = current.f_back
        line_no = caller.f_lineno
        print(msg.format(line_no, result, expected))


def tests():
    assert_equal(par(0), True)
    assert_equal(par(1), False)
    assert_equal(par(2), True)
    assert_equal(par(4), True)
    assert_equal(par(42), True)


if __name__ == '__main__':
    tests()
