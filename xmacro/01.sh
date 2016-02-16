rm *.py
rm -rf temp
mkdir temp

echo "KeyStrPress Control_L KeyStrPress Tab KeyStrRelease Tab KeyStrRelease Control_L" > temp/alternar.txt

echo "KeyStrPress Control_L KeyStrPress l KeyStrRelease l KeyStrRelease Control_L" > temp/limpar.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress equal KeyStrRelease equal KeyStrRelease Shift_L KeyStrRelease Control_L " > temp/zoom.txt

# :set nu
cat << EOF > temp/setnu.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String set nu
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/deleteall.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 1,
KeyStrPress Shift_R KeyStrPress 4 KeyStrRelease 4 KeyStrRelease Shift_R
String d
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/deletalinha2.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 2d
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/deletalinha5.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 5d
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/deletalinha7.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 7d
KeyStrPress Return KeyStrRelease Return
EOF

echo "String i" > temp/edit.txt

### opennumeropar.txt ###
cat << EOF > temp/opennumeropar.txt
String vim numero_par.py
KeyStrPress Return KeyStrRelease Return
EOF

### opennumeropar2.txt ###
cat << EOF > temp/opennumeropar2.txt
String vim numero_par2.py
KeyStrPress Return KeyStrRelease Return
EOF

### opennumeropar3.txt ###
cat << EOF > temp/opennumeropar3.txt
String vim numero_par3.py
KeyStrPress Return KeyStrRelease Return
EOF

### opennumeropar4.txt ###
cat << EOF > temp/opennumeropar4.txt
String vim numero_par4.py
KeyStrPress Return KeyStrRelease Return
EOF

### openmedia.txt ###
cat << EOF > temp/openmedia.txt
String vim media.py
KeyStrPress Return KeyStrRelease Return
EOF


cat << EOF > temp/salvar.txt
KeyStrPress Escape KeyStrRelease Escape
String :w
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/salvarfechar.txt
KeyStrPress Escape KeyStrRelease Escape
String :wq
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/01.txt
String def tests():
KeyStrPress Return KeyStrRelease Return
String     assert par(0) == True
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String if __name__ == '__main__':
KeyStrPress Return KeyStrRelease Return
String     tests()
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/python01.txt
String python numero_par.py
KeyStrPress Return KeyStrRelease Return
EOF


# 02.sh
cat << EOF > temp/goto_line1.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 1
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/02.txt
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Up KeyStrRelease Up
KeyStrPress Up KeyStrRelease Up
String def par(n):
KeyStrPress Return KeyStrRelease Return
String     pass
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/python02.txt
String python numero_par2.py
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/03.txt
KeyStrPress Down KeyStrRelease Down
KeyStrPress Right KeyStrRelease Right
KeyStrPress Right KeyStrRelease Right
KeyStrPress Right KeyStrRelease Right
KeyStrPress Right KeyStrRelease Right
KeyStrPress Delete KeyStrRelease Delete
KeyStrPress Delete KeyStrRelease Delete
KeyStrPress Delete KeyStrRelease Delete
KeyStrPress Delete KeyStrRelease Delete
String return True
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/goto_line8.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 8
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/goto_line7.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 7
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/python03.txt
String python numero_par3.py
KeyStrPress Return KeyStrRelease Return
EOF


cat << EOF > temp/04.txt
String     assert par(1) == False
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/python04.txt
String python numero_par4.py
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/python04v.txt
String python numero_par4.py -v
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/05.txt
String     return False if n else True
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/python05.txt
String python media.py
KeyStrPress Return KeyStrRelease Return
EOF


cat << EOF > temp/06.txt
KeyStrPress Down KeyStrRelease Down
String     assert par(2) == True
KeyStrPress Return KeyStrRelease Return
String     assert par(4) == True
KeyStrPress Return KeyStrRelease Return
String     assert par(42) == True
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/defmatematica.txt
KeyStrPress Shift_R KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_R
String Definicao matematica
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/matematica.txt
KeyStrPress Shift_R KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_R
String Definicao: Seja P o conjunto dos numeros inteiros pares, entao:
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Shift_R KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_R
String P = {x in Z | x = 2y, y in Z}
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/matematica2.txt
KeyStrPress Shift_R KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_R
String Numero par eh todo numero que ao ser dividido por dois deixa resto zero.
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Shift_R KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_R
String P = {x in Z | x mod 2 = 0}
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/07.txt
String     if n % 2 == 0:
KeyStrPress Return KeyStrRelease Return
String         return True
KeyStrPress Return KeyStrRelease Return
String     return False
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/08.txt
String def par(n):
KeyStrPress Return KeyStrRelease Return
String     return False if n else True
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/081.txt
String def assert_true(expr, line):
KeyStrPress Return KeyStrRelease Return
String     try:
KeyStrPress Return KeyStrRelease Return
String         assert expr
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/082.txt
String     except AssertionError:
KeyStrPress Return KeyStrRelease Return
String         print('Line', line, expr)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/083.txt
String def tests():
KeyStrPress Return KeyStrRelease Return
String     assert_true(par(0) == True, '15')
KeyStrPress Return KeyStrRelease Return
String     assert_true(par(1) == False, '16')
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/084.txt
String     assert_true(par(2) == True, '17')
KeyStrPress Return KeyStrRelease Return
String     assert_true(par(4) == True, '18')
KeyStrPress Return KeyStrRelease Return
String     assert_true(par(42) == True, '19')
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String if __name__ == '__main__':
KeyStrPress Return KeyStrRelease Return
String     tests()
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/09.txt
String     if n % 2 == 0:
KeyStrPress Return KeyStrRelease Return
String         return True
KeyStrPress Return KeyStrRelease Return
String     return False
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/10.txt
String import unittest
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String def par(n):
KeyStrPress Return KeyStrRelease Return
String     pass
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String class EvenNumberTest(unittest.TestCase):
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     def tests(self):
KeyStrPress Return KeyStrRelease Return
String         self.assertTrue(par(0))
KeyStrPress Return KeyStrRelease Return
String         self.assertFalse(par(1))
KeyStrPress Return KeyStrRelease Return
String         self.assertTrue(par(2))
KeyStrPress Return KeyStrRelease Return
String         self.assertTrue(par(4))
KeyStrPress Return KeyStrRelease Return
String         self.assertTrue(par(42))
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String if __name__ == '__main__':
KeyStrPress Return KeyStrRelease Return
String     unittest.main()
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/11.txt
String     if n % 2 == 0:
KeyStrPress Return KeyStrRelease Return
String         return True
KeyStrPress Return KeyStrRelease Return
String     return False
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/12.txt
String import unittest
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String def par(n):
KeyStrPress Return KeyStrRelease Return
String     pass
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String class EvenNumberTest(unittest.TestCase):
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     def test_0(self):
KeyStrPress Return KeyStrRelease Return
String         self.assertEqual(par(0), True)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     def test_1(self):
KeyStrPress Return KeyStrRelease Return
String         self.assertEqual(par(1), False)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     def test_2(self):
KeyStrPress Return KeyStrRelease Return
String         self.assertEqual(par(2), True)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     def test_4(self):
KeyStrPress Return KeyStrRelease Return
String         self.assertEqual(par(4), True)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     def test_42(self):
KeyStrPress Return KeyStrRelease Return
String         self.assertEqual(par(42), True)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String if __name__ == '__main__':
KeyStrPress Return KeyStrRelease Return
String     unittest.main()
KeyStrPress Return KeyStrRelease Return
EOF

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress Left KeyStrRelease Left KeyStrRelease Shift_L KeyStrRelease Control_L" > temp/left.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress Right KeyStrRelease Right KeyStrRelease Shift_L KeyStrRelease Control_L" > temp/right.txt

cat << EOF > temp/14.txt
String '''
KeyStrPress Return KeyStrRelease Return
String Calcule a media aritmetica entre dois numeros inteiros.
KeyStrPress Return KeyStrRelease Return
String '''
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String def media(a, b):
KeyStrPress Return KeyStrRelease Return
String     pass
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String def test(obtido, esperado):
KeyStrPress Return KeyStrRelease Return
String     if obtido == esperado:
KeyStrPress Return KeyStrRelease Return
String         prefix = ' OK '
KeyStrPress Return KeyStrRelease Return
String     else:
KeyStrPress Return KeyStrRelease Return
String         prefix = '  X '
KeyStrPress Return KeyStrRelease Return
String     print('{} obtido: {} esperado: {}'.format(prefix, repr(obtido), repr(esperado)))
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/140.txt
String def main():
KeyStrPress Return KeyStrRelease Return
String     test(media(1, 2), 1.5)
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/141.txt
String     test(media(1, 3), 2)
KeyStrPress Return KeyStrRelease Return
String     test(media(2, 4), 3)
KeyStrPress Return KeyStrRelease Return
String     test(media(41, 43), 42)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String if __name__ == '__main__':
KeyStrPress Return KeyStrRelease Return
String     main()
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/15.txt
String     return a + b / 2
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/16.txt
KeyStrPress Right KeyStrRelease Right
KeyStrPress Right KeyStrRelease Right
KeyStrPress Right KeyStrRelease Right
KeyStrPress Right KeyStrRelease Right
KeyStrPress Right KeyStrRelease Right
KeyStrPress Right KeyStrRelease Right
KeyStrPress Right KeyStrRelease Right
String (
KeyStrPress Right KeyStrRelease Right
KeyStrPress Right KeyStrRelease Right
KeyStrPress Right KeyStrRelease Right
KeyStrPress Right KeyStrRelease Right
KeyStrPress Right KeyStrRelease Right
String )
EOF

cat << EOF > temp/fim.txt
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Shift_R KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_R
String Fim!!!
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Shift_R KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_R
String     github.com/rg3915/test-first
KeyStrPress Return KeyStrRelease Return
EOF










# xmacroplay ----------------------------------------------
answer="s"

continuar(){
    read -p "Deseja continuar? (S/n): " answer
    answer=${answer:-s}
    if [ "$answer" == "s" ]; then continue; fi
}

# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 10 < temp/limpar.txt
# sleep 1
# xmacroplay -d 60 < temp/opennumeropar.txt
# sleep 1
# xmacroplay -d 15 < temp/setnu.txt
# sleep 1
# xmacroplay -d 10 < temp/deleteall.txt # TIRAR
# sleep 1
# xmacroplay -d 10 < temp/edit.txt
# sleep 1
# xmacroplay -d 5 < temp/01.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python01.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 60 < temp/python01.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# # continuar

# # 02.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/goto_line1.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 5 < temp/02.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python01.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 60 < temp/python01.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done


# # continuar

# # 03.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/goto_line1.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 5 < temp/03.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python01.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 60 < temp/python01.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done


# # continuar

# # 04.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/goto_line8.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 5 < temp/04.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python01.sh
# xmacroplay -d 3 < temp/alternar.txt
# # xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 15 < temp/python01.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# # continuar

# # 05.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/deletalinha2.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 5 < temp/05.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python01.sh
# xmacroplay -d 3 < temp/alternar.txt
# # xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 15 < temp/python01.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done


# # continuar

# # 06.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/goto_line8.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 5 < temp/06.txt  # editar # manter velocidade 15
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python01.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 15 < temp/python01.txt
# sleep 3
# xmacroplay -d 3 < temp/limpar.txt
# for i in $(seq 1 25); do xmacroplay -d 3 < temp/right.txt; done
# xmacroplay -d 10 < temp/defmatematica.txt
# sleep 5
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 30 < temp/matematica.txt

# # matematica2.sh
# xmacroplay -d 30 < temp/matematica2.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# # continuar

# # separar
# xmacroplay -d 3 < temp/alternar.txt
# for i in $(seq 1 25); do xmacroplay -d 3 < temp/left.txt; done
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# # 07.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/deletalinha2.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 5 < temp/07.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python01.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 15 < temp/python01.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# continuar

# # fechar
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/salvarfechar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # 08.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/limpar.txt
# sleep 1
# xmacroplay -d 60 < temp/opennumeropar2.txt
# # xmacroplay -d 10 < temp/deleteall.txt # TIRAR
# sleep 1
# xmacroplay -d 15 < temp/setnu.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 5 < temp/08.txt # editar
# xmacroplay -d 3 < temp/alternar.txt

# continuar

# # 081.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 5 < temp/081.txt # editar
# xmacroplay -d 3 < temp/alternar.txt

# continuar

# # 082.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 5 < temp/082.txt # editar
# xmacroplay -d 3 < temp/alternar.txt

# continuar

# # 083.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 5 < temp/083.txt # editar
# xmacroplay -d 3 < temp/alternar.txt

# continuar

# # 084.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 5 < temp/084.txt # editar # manter velocidade 15
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python02.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 60 < temp/python02.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# continuar

# # 09.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/goto_line1.txt
# xmacroplay -d 60 < temp/deletalinha2.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 5 < temp/09.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python02.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 60 < temp/python02.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# # continuar

# # fechar
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/salvarfechar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # 10.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/limpar.txt
# sleep 1
# xmacroplay -d 60 < temp/opennumeropar3.txt
# xmacroplay -d 10 < temp/deleteall.txt # TIRAR
# sleep 1
# xmacroplay -d 15 < temp/setnu.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 5 < temp/10.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python03.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 60 < temp/python03.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# # continuar

# # 11.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/deletalinha5.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 5 < temp/11.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python03.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 15 < temp/python03.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# # continuar

# # fechar
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/salvarfechar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # 12.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/limpar.txt
# sleep 1
# xmacroplay -d 60 < temp/opennumeropar4.txt
# xmacroplay -d 10 < temp/deleteall.txt # TIRAR
# sleep 1
# xmacroplay -d 15 < temp/setnu.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 5 < temp/12.txt # editar # manter velocidade 15
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python04.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 60 < temp/python04.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# continuar

# # 13.sh
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# sleep 1
# xmacroplay -d 60 < temp/goto_line1.txt
# sleep 1
# xmacroplay -d 60 < temp/deletalinha5.txt
# sleep 1
# xmacroplay -d 60 < temp/edit.txt
# sleep 1
# xmacroplay -d 5 < temp/11.txt # editar
# sleep 1
# xmacroplay -d 60 < temp/salvar.txt
# xmacroplay -d 3 < temp/alternar.txt

# # python04.sh
# xmacroplay -d 3 < temp/alternar.txt
# xmacroplay -d 3 < temp/limpar.txt
# xmacroplay -d 15 < temp/python04.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# # experimente -v
# xmacroplay -d 3 < temp/alternar.txt
# sleep 3
# xmacroplay -d 30 < temp/python04v.txt
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

# continuar

# # fechar
# for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
# xmacroplay -d 60 < temp/salvarfechar.txt
# xmacroplay -d 3 < temp/alternar.txt

# 14.sh
for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
sleep 1
xmacroplay -d 60 < temp/openmedia.txt
xmacroplay -d 10 < temp/deleteall.txt # TIRAR
sleep 1
xmacroplay -d 15 < temp/setnu.txt
sleep 1
xmacroplay -d 60 < temp/edit.txt
sleep 1
for i in $(seq 1 30); do xmacroplay -d 3 < temp/left.txt; done
xmacroplay -d 5 < temp/14.txt # editar
xmacroplay -d 3 < temp/alternar.txt

# 140.sh
for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
xmacroplay -d 5 < temp/140.txt # editar
xmacroplay -d 3 < temp/alternar.txt

continuar

# 141.sh
for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
xmacroplay -d 5 < temp/141.txt # editar
xmacroplay -d 60 < temp/salvar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

# python05.sh
xmacroplay -d 3 < temp/alternar.txt
sleep 1
for i in $(seq 1 30); do xmacroplay -d 3 < temp/right.txt; done
xmacroplay -d 3 < temp/limpar.txt
xmacroplay -d 60 < temp/python05.txt
for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

continuar

# 15.sh
for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
sleep 1
xmacroplay -d 60 < temp/goto_line1.txt
sleep 1
xmacroplay -d 60 < temp/deletalinha7.txt
sleep 1
xmacroplay -d 60 < temp/edit.txt
xmacroplay -d 5 < temp/15.txt # editar
sleep 1
xmacroplay -d 60 < temp/salvar.txt
xmacroplay -d 3 < temp/alternar.txt

# python05.sh
xmacroplay -d 3 < temp/alternar.txt
xmacroplay -d 3 < temp/limpar.txt
xmacroplay -d 15 < temp/python05.txt
for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

continuar

# 16.sh
for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done
sleep 1
xmacroplay -d 60 < temp/goto_line7.txt
sleep 1
xmacroplay -d 60 < temp/edit.txt
sleep 1
xmacroplay -d 5 < temp/16.txt # editar
sleep 1
xmacroplay -d 60 < temp/salvar.txt
xmacroplay -d 3 < temp/alternar.txt

# python05.sh
xmacroplay -d 3 < temp/alternar.txt
xmacroplay -d 3 < temp/limpar.txt
xmacroplay -d 15 < temp/python05.txt
for i in $(seq 1 2); do xmacroplay -d 3 < temp/alternar.txt; done

continuar

xmacroplay -d 3 < temp/alternar.txt
for i in $(seq 1 5); do xmacroplay -d 3 < temp/zoom.txt; done
xmacroplay -d 15 < temp/fim.txt