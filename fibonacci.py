''' Imprima os 10 primeiros números da sequência de Fibonacci '''


def fib(n):
    a, b = 1, 1
    for i in range(n - 1):
        a, b = b, a + b
    return a


def printfib(n=10):
    l = []
    for i in range(1, n + 1):
        l.append(fib(i))
    return l


def test(got, expected):
    if got == expected:
        prefix = ' OK '
    else:
        prefix = '  X '
    print('{} got: {} expected: {}'.format(prefix, repr(got), repr(expected)))


def main():
    test(printfib(3), [1, 1, 2])
    test(printfib(6), [1, 1, 2, 3, 5, 8])
    test(printfib(10), [1, 1, 2, 3, 5, 8, 13, 21, 34, 55])
    print('')
    print(printfib(10))


if __name__ == '__main__':
    main()
