
set /p Build=<version.txt
ECHO %Build%
ECHO ".........................................................."


SET Path=%PATH%;C:\Program Files\Git\bin;

ECHO %PATH%
git --version
cd ..

IF exist "DeepRCommon" (
	cd DeepRCommon
	git init
	git remote add origin https://%GITHUB_TOKEN%@github.com/deepranalytics/DeepRCommon.git
	git fetch origin
	git checkout development -ft

) ELSE (
 git clone https://%GITHUB_TOKEN%@github.com/deepranalytics/DeepRCommon.git
 cd DeepRCommon
)

git stash
git checkout development
git pull --rebase
cd ..
 
IF exist "DeepRExternal" (
	cd DeepRExternal
	git init
	git remote add origin https://%GITHUB_TOKEN%@github.com/deepranalytics/DeepRExternal.git
	git fetch origin
	git checkout development -ft

) ELSE (
 git clone https://%GITHUB_TOKEN%@github.com/deepranalytics/DeepRExternal.git
 cd DeepRExternal
)

git stash
git checkout development
git pull --rebase

cd %CI_PROJECT_DIR%
