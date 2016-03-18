robocopy ".\Programs\Tests\vmtranslator" ".\Workspace" /E

pause

python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/StackArithmetic/SimpleAdd
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/StackArithmetic/StackTest
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/MemoryAccess/BasicTest
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/MemoryAccess/PointerTest
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/MemoryAccess/StaticTest

pause

python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/ProgramFlow/BasicLoop -n
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/ProgramFlow/FibonacciSeries -n
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/FunctionCalls/SimpleFunction -n
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/FunctionCalls/NestedCall -n
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/FunctionCalls/FibonacciElement
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/FunctionCalls/StaticsTest

pause