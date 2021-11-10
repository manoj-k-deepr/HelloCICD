echo "Install CARClient libraries."

echo "Solution Dir : " %1
echo "Configuration : " %2


echo "Copy dlls - "

xcopy /F /Y "%1\..\DeepRCommon\lib\ScannerAPI\%2\ScannerAPI.dll" "%1\bin\%2"


IF %2 EQU Debug (
xcopy /F /Y "%1\..\DeepRCommon\lib\ScannerAPI\%2\ScannerAPI.pdb" "%1\bin\%2"
)
