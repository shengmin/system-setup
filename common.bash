#!/bin/bash

DIR_PROJECT=`pwd`
DIR_TMP=~/tmp
DIR_BIN=~/bin
DIR_LIB=~/lib
DIR_INSTALLED=~/installed
DIR_BACKUP=~/backup

RED='\e[0;31m'
GREEN='\e[0;32m'
BLUE='\e[0;34m'
YELLOW='\e[0;33m'
RESET='\e[0m'

for dir in $DIR_TMP $DIR_LIB $DIR_BIN $DIR_BACKUP $DIR_INSTALLED ; do
  if [ ! -e ${dir} ]; then
    mkdir ${dir}
  fi
done
