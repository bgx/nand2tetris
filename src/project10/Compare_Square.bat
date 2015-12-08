@echo off

cd ".\TestPrograms\Square"

echo Main.xml
call "..\..\..\..\tools\TextComparer.bat" .\Main.xml .\xml\Main.xml
echo Square.xml
call "..\..\..\..\tools\TextComparer.bat" .\Square.xml .\xml\Square.xml
echo SquareGame.xml
call "..\..\..\..\tools\TextComparer.bat" .\SquareGame.xml .\xml\SquareGame.xml
echo. 
echo MainT.xml
call "..\..\..\..\tools\TextComparer.bat" .\MainT.xml .\xml\MainT.xml
echo SquareT.xml
call "..\..\..\..\tools\TextComparer.bat" .\SquareT.xml .\xml\SquareT.xml
echo SquareGameT.xml
call "..\..\..\..\tools\TextComparer.bat" .\SquareGameT.xml .\xml\SquareGameT.xml
pause