#!/bin/bash

cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release

cmake --version
gcc --version
# Build CARClient Release
make HelloCICD
