SET Path=%PATH%;"C:\Users\Administrator\AppData\Local\Programs\Python\Python38\"


"C:\Program Files\Cppcheck\cppcheck.exe" --enable=all .
"C:\Program Files\Cppcheck\cppcheck.exe" --enable=all . --xml 2> cppcheck.xml
python "C:\Program Files\Cppcheck\htmlreport\cppcheck-htmlreport" --file=cppcheck.xml --report-dir=cppreport --source-dir=.
