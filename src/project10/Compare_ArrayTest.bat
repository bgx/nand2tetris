@echo off

cd ".\ArrayTest"

echo Main.xml
call "..\..\..\tools\TextComparer.bat" .\Main.xml .\xml\Main.xml
echo. 
echo MainT.xml
call "..\..\..\tools\TextComparer.bat" .\MainT.xml .\xml\MainT.xml
pause