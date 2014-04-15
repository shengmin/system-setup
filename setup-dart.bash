#!/bin/bash

source common.bash

DART_VERSION=1.3.0
DART_ZIP=$DIR_TMP/dart-${DART_VERSION}.zip
DART_BIN_DIR=$DIR_LIB/dart-sdk/bin
DART_INSTALLATION_RECORD=$DIR_INSTALLED/dart-${DART_VERSION}.txt

if [ ! -f $DART_INSTALLATION_RECORD ]; then
  echo -e "${GREEN}Setting up Dart${RESET}"
  wget -nc http://storage.googleapis.com/dart-archive/channels/stable/release/latest/sdk/dartsdk-linux-x64-release.zip -O $DART_ZIP
  unzip $DART_ZIP -d $DIR_LIB

  for target in $DART_BIN_DIR/* ; do
    if [ -f $target ]; then
      name=`basename $target`
      echo -e "${GREEN}Adding executable $name ${RESET}"
      rm -f $DIR_BIN/$name
      ln -s $target $DIR_BIN/$name
    fi
  done

  touch $DART_INSTALLATION_RECORD
else
  echo -e "${YELLOW}Dart has already been set up${RESET}"
fi
