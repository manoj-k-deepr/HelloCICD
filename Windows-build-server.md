## Setup: Windows Build Server

1. Install [Qt 5.11.3](https://download.qt.io/new_archive/qt/5.11/5.11.3/)

2. Install [visual studio 2017](https://my.visualstudio.com/Downloads?q=visual%20studio%202017&wt.mc_id=o~msft~vscom~older-downloads) community

3. Install [chocolatey](https://chocolatey.org/install)

4. Install hub

   1. `choco install hub`

5. Install GitHub Actions

6. Permission for executing PowerShell

   1. Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

7. Cross check GitHub runner permissions

8. Install [python](https://www.python.org/downloads/)

   1. choco install python

9. Install [Conan](https://conan.io/downloads.html) on system path

   1. `pip install conan`
   2. Add conan on system path

10. Install [git](https://git-scm.com/download/win)

    1. Add bash to path

11. Install [makensis](https://sourceforge.net/projects/nsis/files/NSIS%203/3.08/nsis-3.08-setup.exe/download?use_mirror=cfhcable&download=)

12. Install [CMake](https://community.chocolatey.org/packages/cmake)

    1. ```
       choco install cmake --installargs 'ADD_CMAKE_TO_PATH=System'
       ```

