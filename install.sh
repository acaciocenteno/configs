#!/bin/bash

find . -type f -name '.*' -exec cp {} $HOME \;
cp -R .vim ~
cd ~
source .bashrc
