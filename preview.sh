#!/bin/bash

killall claat 2>&1 > /dev/null

claat export index.md

pushd dist
claat serve &
popd

while :; do claat update; sleep 10; done
