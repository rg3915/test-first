def par(n):
    if n % 2 == 0:
        return True
    return False


def assert_true(expr, line):
    try:
        assert expr
    except AssertionError:
        print('Line', line, expr)


def tests():
    assert_true(par(0) == True, '15')
    assert_true(par(1) == False, '16')
    assert_true(par(2) == True, '17')
    assert_true(par(4) == True, '18')
    assert_true(par(42) == True, '19')


if __name__ == '__main__':
    tests()
