@echo off

cd C:\Users\Brian\Documents\nand2tetris\src\project10\Square

echo Main.xml
call "C:\Users\Brian\Documents\nand2tetris\tools\TextComparer.bat" .\Main.xml .\xml\Main.xml
echo Square.xml
call "C:\Users\Brian\Documents\nand2tetris\tools\TextComparer.bat" .\Square.xml .\xml\Square.xml
echo SquareGame.xml
call "C:\Users\Brian\Documents\nand2tetris\tools\TextComparer.bat" .\SquareGame.xml .\xml\SquareGame.xml
echo. 
echo MainT.xml
call "C:\Users\Brian\Documents\nand2tetris\tools\TextComparer.bat" .\MainT.xml .\xml\MainT.xml
echo SquareT.xml
call "C:\Users\Brian\Documents\nand2tetris\tools\TextComparer.bat" .\SquareT.xml .\xml\SquareT.xml
echo SquareGameT.xml
call "C:\Users\Brian\Documents\nand2tetris\tools\TextComparer.bat" .\SquareGameT.xml .\xml\SquareGameT.xml
pause