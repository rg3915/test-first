''' Calcule a média aritmética entre n números inteiros. '''

n = [1, 2, 3, 4, 5]


def media(n):
    soma = 0
    for i in range(len(n)):
        soma += n[i]
    return soma / len(n)


def media(n):
    soma = 0
    for i in n:
        soma += i
    return soma / len(n)


def media(n):
    return sum(n) / len(n)


def test(got, expected):
    if got == expected:
        prefix = ' OK '
    else:
        prefix = '  X '
    print('{} got: {} expected: {}'.format(prefix, repr(got), repr(expected)))


def main():
    test(media([1, 2]), 1.5)
    test(media([1, 2, 3]), 2)
    test(media([1, 2, 3, 4, 5]), 3)
    test(media([2, 4, 6, 8]), 5)
    test(media([41, 43]), 42)


if __name__ == '__main__':
    main()
