# Test First Python

Esta é a parte, talvez, mais importante do seu código, pois com ele você mesmo pode validar seu código.

### Exemplo 1

Veja o mínimo de um teste em Python:

```python
def tests():
    assert par(0) == True
    assert par(1) == False
    assert par(2) == True
    assert par(4) == True
    assert par(42) == True

if __name__ == '__main__':
    tests()
```

No exemplo queremos verificar se um número é par.

Resultado:

```bash
$ python numero_par.py
Traceback (most recent call last):
  File "numero_par.py", line 9, in <module>
    tests()
  File "numero_par.py", line 2, in tests
    assert par(0) == True
NameError: name 'par' is not defined
```

Vamos escrever a função.

```python
def par(n):
    pass

def tests():
    assert par(0) == True
    assert par(1) == False
    assert par(2) == True
    assert par(4) == True
    assert par(42) == True

if __name__ == '__main__':
    tests()
```

Resultado:

```bash
$ python numero_par.py
Traceback (most recent call last):
  File "numero_par.py", line 13, in <module>
    tests()
  File "numero_par.py", line 6, in tests
    assert par(0) == True
AssertionError
```

**Definição**: Seja P o conjunto dos números inteiros pares, então:

P = {x \in \Z | x = 2y, y \in \Z}

Número par é todo número que ao ser dividido por dois deixa resto zero.

P = {x \in \Z | x mod 2 = 0}


Aplicando em nosso código temos:

```python
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
```

OK! Todos os testes passaram.

### Exemplo 2

Podemos usar uma função um pouco mais sofisticada para escrever os testes.

```python
def par(n):
    pass


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
```

Aqui, nós verificamos em qual linha foi gerado o erro.

Resultado:

```bash
$ python numero_par2.py
Line 15 False
Line 16 False
Line 17 False
Line 18 False
Line 19 False
```

### Exemplo 3

Com [unittest][0] fica tudo mais simples e mais completo.

```python
import unittest


def par(n):
    pass


class EvenNumberTest(unittest.TestCase):

    def tests(self):
        self.assertTrue(par(0))
        self.assertFalse(par(1))
        self.assertTrue(par(2))
        self.assertTrue(par(4))
        self.assertTrue(par(42))

if __name__ == '__main__':
    unittest.main()
```

Resultado:

```bash
$ python numero_par3.py
F
======================================================================
FAIL: tests (__main__.EvenNumberTest)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "numero_par3.py", line 11, in tests
    self.assertTrue(par(0))
AssertionError: None is not true

----------------------------------------------------------------------
Ran 1 test in 0.001s

FAILED (failures=1)
```

Ele mostra, em mais detalhes, qual foi o erro, no caso foi uma **falha**, qual a linha onde isso aconteceu e em `AssertionError` ele informa que o valor esperado era `true`, mas foi retornado `None`.

### Exemplo 4

Agora separamos os testes colocando um `assert` por teste.


```python
import unittest


def par(n):
    pass


class EvenNumberTest(unittest.TestCase):

    def test_0(self):
        self.assertEqual(par(0), True)

    def test_1(self):
        self.assertEqual(par(1), False)

    def test_2(self):
        self.assertEqual(par(2), True)

    def test_4(self):
        self.assertEqual(par(4), True)

    def test_42(self):
        self.assertEqual(par(42), True)

if __name__ == '__main__':
    unittest.main()
```

Resultado:

```bash
$ python numero_par4.py
FFFFF
======================================================================
FAIL: test_0 (__main__.EvenNumberTest)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "numero_par4.py", line 11, in test_0
    self.assertEqual(par(0), True)
AssertionError: None != True

======================================================================
FAIL: test_1 (__main__.EvenNumberTest)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "numero_par4.py", line 14, in test_1
    self.assertEqual(par(1), False)
AssertionError: None != False

======================================================================
FAIL: test_2 (__main__.EvenNumberTest)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "numero_par4.py", line 17, in test_2
    self.assertEqual(par(2), True)
AssertionError: None != True

======================================================================
FAIL: test_4 (__main__.EvenNumberTest)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "numero_par4.py", line 20, in test_4
    self.assertEqual(par(4), True)
AssertionError: None != True

======================================================================
FAIL: test_42 (__main__.EvenNumberTest)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "numero_par4.py", line 23, in test_42
    self.assertEqual(par(42), True)
AssertionError: None != True

----------------------------------------------------------------------
Ran 5 tests in 0.001s

FAILED (failures=5)
```

5 testes falharam e cada um está devidamente identificado.

Arrumando o código:

```python
def par(n):
    if n % 2 == 0:
        return True
    return False

# testes
# ...
```

Resultado:

```bash
$ python numero_par4.py 
.....
----------------------------------------------------------------------
Ran 5 tests in 0.001s

OK
```

OK! 5 testes passaram.

Experimente:

```bash
$ python numero_par4.py -v
test_0 (__main__.EvenNumberTest) ... ok
test_1 (__main__.EvenNumberTest) ... ok
test_2 (__main__.EvenNumberTest) ... ok
test_4 (__main__.EvenNumberTest) ... ok
test_42 (__main__.EvenNumberTest) ... ok

----------------------------------------------------------------------
Ran 5 tests in 0.001s

OK
```

### Exemplo 5

Mais um exemplo, sem unittest.

```python
''' Calcule a média aritmética entre dois números inteiros. '''


def media(a, b):
    pass


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
```

Resultado:

```bash
$ python media.py
  X  got: None expected: 1.5
  X  got: None expected: 2
  X  got: None expected: 3
  X  got: None expected: 42
```

Arrumando o código:

```python
def media(a, b):
    return (a + b) / 2
```

Resultado:

```bash
$ python media.py 
 OK  got: 1.5 expected: 1.5
 OK  got: 2.0 expected: 2
 OK  got: 3.0 expected: 3
 OK  got: 42.0 expected: 42
```

[0]: https://docs.python.org/3/library/unittest.html