#!/bin/bash

git submodule init
git submodule update
./start_servers.sh
./build-fcrepo-toolbox.sh
./align_composer.sh
./build_and_run_islandora.sh
