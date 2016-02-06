''' Calcule a média aritmética entre dois números inteiros. '''


def media(a, b):
    return (a + b) / 2


def test(got, expected):
    if got == expected:
        prefix = ' OK '
    else:
        prefix = '  X '
    print('{} got: {} expected: {}'.format(prefix, repr(got), repr(expected)))


def main():
    test(media(1, 2), 1.5)
    test(media(1, 3), 2)
    test(media(2, 4), 3)
    test(media(41, 43), 42)


if __name__ == '__main__':
    main()
