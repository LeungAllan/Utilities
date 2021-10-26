@echo Off
set vDay= %date:~-10,2%
set vMonth= %date:~-7,2%
set vYear= %date:~-4,4%
set fileheader=test-
echo %date:~-4,4%%date:~-7,2%%date:~-10,2%

set vDay=%vDay:~-2,2%
set vMonth=%vMonth:~-2,2%
set vYear=%vYear:~-4,4%

echo Current Day=%vDay% / %vMonth% / %vYear%

rem Filename & Path pattern
set vPath=C:\Temp\test\
set vfile=test-
set vSuffix=*.txt

rem delete file current month - 6 months
set /A vMonth=%vMonth%-6
IF %vMonth% LSS 1 SET /A vMonth+=12, vYear-=1
rem insert left zeros, if needed
IF %vMonth% LSS 10 SET vMonth=0%vMonth%

echo Year and Month for delete is = %vMonth% %vYear%

for %%x in (02 03 04 05 06 07 08 09 10 11 12 13 14 16 17 18 19 20 21 22 23 24 25 26 27 28 29)  do (
 	echo %vAction% %vPath%%vfile%%vYear%%vMonth%%%x%vSuffix%
 	del %vPath%%vfile%%vYear%%vMonth%%%x%vSuffix%
)
