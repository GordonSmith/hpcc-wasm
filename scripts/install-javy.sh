#!/bin/bash

# List of current vertsion can be found in https://github.com/bytecodealliance/javy/releases  ---
JAVY_VERSION=0.6.0
if [ ! -d "./javy" ] 
then
    mkdir javy
    cd javy
    wget https://github.com/bytecodealliance/javy/releases/download/v${JAVY_VERSION}/javy-x86_64-linux-v${JAVY_VERSION}.gz
    gunzip ./javy-x86_64-linux-v${JAVY_VERSION}.gz
    mv ./javy-x86_64-linux-v${JAVY_VERSION} ./javy
    chmod +x ./javy
    cd ..
fi
