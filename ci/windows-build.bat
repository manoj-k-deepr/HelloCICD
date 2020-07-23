CALL  "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat" amd64

SET Path=%PATH%;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\Hostx64\x64;
SET Path=%PATH%;C:\Program Files (x86)\Windows Kits\10\Lib\10.0.17763.0\um\arm64;
SET Path=%PATH%;C:\Qt\Qt5.12.1\5.12.1\msvc2017_64\bin;
SET Path=%PATH%;C:\Qt\Qt5.12.1\Tools\QtCreator\bin;
SET Path=%PATH%;C:\Program Files\Git\bin;

ECHO %PATH%

git --version
qmake --version

