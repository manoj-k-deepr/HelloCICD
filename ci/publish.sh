#!/bin/bash

echo ${PWD}
read -r ver < ${PWD}/version.txt

git clone https://$GITHUB_TOKEN@github.com/manoj-k-deepr/HelloCICDRelease.git
cd HelloCICDRelease
pwd

array=$(git tag -l)

match=0

for value in $array
do
   if [[ "$value" = "$ver" ]]; then
       echo "$value";
       echo "$ver";
       match=1
   fi
done

if [  $match = 1 ]; then
    echo 'Contain'
else
    echo 'Not Contain'
    hub release create -a "../bin/Release/Scanner-Installer.exe" -m "Scanner Build: $ver" -p "$ver"
fi

