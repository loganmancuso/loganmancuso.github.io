#!/bin/bash
###
# 'StartServer.sh'
# This script will build the program 
# needs to be run from 
# 'ProgramName'/scripts/
#
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 07-05-2019--14:17:58
###

###
# Variables
###

# Top
WORKING_DIR="_site"
TEST_DIR="_test"
IOFILES_DIR="scripts"
# Middle
SH_LOG="$IOFILES_DIR/sh.log"
BUILD_ERR="$IOFILES_DIR/build.err"
# Active

###
# this function will compile the files
###
function compile() {
	echo "COMPILING"
	rm -rf .sass-cache/* _test/* _site/* ./vendor/*
	bundle config set --local path 'vendor/bundle'
	bundle install
	bundle update
	if [ $? -eq 0 ]; then
		echo "Build Successful"
	else
		echo "Build Failed"
	fi
	echo "COMPILING COMPLETE"
}

function execute() {
	rm -rf .sass-cache/* _test/* _site/*
	echo "EXECUTING"
	bundle exec jekyll serve --config _config.yml --port 4000 --host 0.0.0.0
	echo "EXECUTION COMPLETE"
	cd $IOFILES_DIR
}

### Begining of the build
# File Cleanp
cd ../
rm -r $SH_LOG $BUILD_ERR 
touch $SH_LOG $BUILD_ERR

if [ "$1" == "--full" ]; then
	compile |& tee -a $BUILD_ERR 
fi
#  run only if build hasnt failed
read -p "Run Program...? [Y]es / [N]o:    " yn_
case "${yn_}" in
  [yY][eE][sS]|Y|y ) # yes
    execute | tee -a $SH_LOG
    ;;
  [nN][oO]|N|n ) # no
    echo "Run Stopped" | tee -a $SH_LOG
	exit 1
    ;;
  * ) # else
    echo $YES_OR_NO | tee -a $SH_LOG
	exit 1
    ;;
esac

echo "Done Building Program" 

###
# End 'StartServer.sh'
###