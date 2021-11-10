#!/bin/bash

cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release

# Build CARClient Release
make HelloCICD
