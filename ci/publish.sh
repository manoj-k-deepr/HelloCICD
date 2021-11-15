git clone https://github.com/manoj-k-deepr/HelloCICDRelease.git
cd HelloCICDRelease
pwd

if[ git tag -l | grep -q '1.0.1' ]
then
    echo 'matched'
else
    echo 'Not matched'
fi

echo "hub release create -a "../bin/Release/Scanner-Installer.exe" -m "Scanner Build: 1.0.3" -p "1.0.3""