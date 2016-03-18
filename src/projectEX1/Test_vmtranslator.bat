robocopy ".\Programs\Tests\vmtranslator" ".\Workspace" /E

pause

python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/StackArithmetic/SimpleAdd -n
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/StackArithmetic/StackTest -n
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/MemoryAccess/BasicTest -n
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/MemoryAccess/PointerTest -n
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/MemoryAccess/StaticTest -n

pause

python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/ProgramFlow/BasicLoop -n
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/ProgramFlow/FibonacciSeries -n
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/FunctionCalls/SimpleFunction -n
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/FunctionCalls/NestedCall -n
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/FunctionCalls/FibonacciElement
python.exe ./MyTools/vmtranslator/vmtranslator.py ./Workspace/FunctionCalls/StaticsTest

pause