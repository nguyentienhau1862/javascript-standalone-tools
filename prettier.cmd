@ECHO off

SET dp0=%~dp0
SET settings=--config "%dp0%/prettier/.prettierrc.json" --ignore-path "%dp0%/prettier/.prettierignore"

"%dp0%/source/node.exe" "%dp0%/prettier/prettier.cjs" %* %settings%

EXIT /b
