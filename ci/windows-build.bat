CALL  "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat" amd64

@REM SSet Jom Path
SET Path=%PATH%;C:\Qt\Qt5.11.3\Tools\QtCreator\bin;
SET Path=%PATH%;C:\Program Files (x86)\NSIS\Bin;
SET Path=%PATH%;C:\Qt\Qt5.11.3\5.11.3\msvc2017_64\bin;

ECHO %PATH%

git --version
qmake --version
conan --version
conan remote list

conan install . -g qmake --profile conan/WRelease --build=missing

qmake scanner.pro -spec win32-msvc "CONFIG+=release" && jom.exe qmake_all
jom.exe -j8

cd bin
cd Release
cd

SET F="Scanner.exe"

IF EXIST %F% (
  ECHO %F% is existing
) ELSE (
  ECHO %F% is not existing
  EXIT 1
)

windeployqt Scanner.exe