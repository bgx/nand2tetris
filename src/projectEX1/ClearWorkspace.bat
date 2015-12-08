FOR /D %%p IN (".\Workspace\*.*") DO rmdir "%%p" /s /q
del /Q ".\Workspace\*.*" 