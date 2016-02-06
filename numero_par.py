def par(n):
    if n % 2 == 0:
        return True
    return False


def tests():
    assert par(0) == True
    assert par(1) == False
    assert par(2) == True
    assert par(4) == True
    assert par(42) == True

if __name__ == '__main__':
    tests()
