rm -rf temp
mkdir temp
echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress o KeyStrRelease o KeyStrRelease Control_L KeyStrRelease Shift_L" > temp/ctrl_o.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress Down KeyStrRelease Down KeyStrRelease Shift_L KeyStrRelease Control_L" > temp/down.txt

echo "KeyStrPress Control_L KeyStrPress Tab KeyStrRelease Tab KeyStrRelease Control_L " > temp/alternar.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress e KeyStrRelease e KeyStrRelease Control_L KeyStrRelease Shift_L" > temp/ctrl_e.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress equal KeyStrRelease equal KeyStrRelease Shift_L KeyStrRelease Control_L " > temp/zoom.txt

cat << EOF > temp/p.txt
String PS1="$ "
KeyStrPress Return KeyStrRelease Return
String clear
KeyStrPress Return KeyStrRelease Return
EOF

### file.txt ###
cat << EOF > temp/file.txt
String sa
KeyStrPress Return KeyStrRelease Return
EOF
### file.txt ###

cat << EOF > temp/list.txt
String l
KeyStrPress Return KeyStrRelease Return
EOF

# xmacroplay
xmacroplay -d 5 < temp/ctrl_o.txt
sleep 0.5
for i in $(seq 1 15); do xmacroplay -d 3 < temp/down.txt; done
sleep 0.5
xmacroplay -d 5 < temp/alternar.txt
sleep 0.5
xmacroplay -d 5 < temp/ctrl_e.txt
sleep 0.5
for i in $(seq 1 3); do 
    xmacroplay -d 5 < temp/p.txt
    sleep 0.3
    xmacroplay -d 5 < temp/alternar.txt
done
xmacroplay -d 5 < temp/alternar.txt
for i in $(seq 1 2); do 
    xmacroplay -d 5 < temp/alternar.txt
    sleep 0.3
    for i in $(seq 1 5); do xmacroplay -d 3 < temp/zoom.txt; done
done
for i in $(seq 1 2); do 
    sleep 0.3
    xmacroplay -d 5 < temp/alternar.txt
done
xmacroplay -d 5 < temp/list.txt
for i in $(seq 1 2); do 
    sleep 0.3
    xmacroplay -d 5 < temp/alternar.txt
done
