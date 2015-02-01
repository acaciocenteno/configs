#!/bin/bash

find . -type f -name '.*' -exec cp {} $HOME \;
cp -R .vim ~
cd ~
source .bashrc

OS=`uname -s`
if [ "${OS}" == "Darwin" ]; then
	grep "source ~/.bashrc" ~/.bash_profile >/dev/null 2>&1
	if [ "$?" == "1" ]; then
	   echo "source ~/.bashrc" >> ~/.bash_profile
	fi	   
fi
