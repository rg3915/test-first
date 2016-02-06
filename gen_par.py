def par(n):
    if n % 2 == 0:
        return True
    return False


def gen_par():
    for i in range(20):
        if par(i):
            print(i)


def tests():
    assert par(0) == True
    assert par(1) == False
    assert par(2) == True
    assert par(4) == True

if __name__ == '__main__':
    tests()
    gen_par()
