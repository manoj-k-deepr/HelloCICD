echo "Install Scanner libraries."

echo "Solution Dir : " %1
echo "Configuration : " %2


echo "Copy dlls - "

REM xcopy /F /Y "%1\..\DeepRCommon\lib\ScannerAPI\%2\ScannerAPI.dll" "%1\bin\%2"

REM xcopy /F /Y "%1\..\DeepRExternal\lib\cpprestsdk\%2\cpprest141_2_10.dll" "%1\bin\%2"

REM xcopy /F /Y "%1\..\DeepRExternal\dll\Others\libcrypto-1_1-x64.dll" "%1\bin\%2"
REM xcopy /F /Y "%1\..\DeepRExternal\dll\Others\libssl-1_1-x64.dll" "%1\bin\%2"

REM IF %2 EQU Debug (
REM xcopy /F /Y "%1\..\DeepRCommon\lib\ScannerAPI\%2\ScannerAPI.pdb" "%1\bin\%2"

REM xcopy /F /Y "%1\..\DeepRExternal\lib\cpprestsdk\%2\cpprest141_2_10d.dll" "%1\bin\%2"

)
