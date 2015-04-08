@echo off

cd C:\Users\Brian\Documents\nand2tetris\src\project10\ArrayTest

echo Main.xml
call "C:\Users\Brian\Documents\nand2tetris\tools\TextComparer.bat" .\Main.xml .\xml\Main.xml
echo. 
echo MainT.xml
call "C:\Users\Brian\Documents\nand2tetris\tools\TextComparer.bat" .\MainT.xml .\xml\MainT.xml
pause