#!/bin/bash

source common.bash

DART_ZIP=$DIR_TMP/dart-1.2.zip
DART_BIN_DIR=$DIR_LIB/dart-sdk/bin

if [ ! -f $DIR_INSTALLED/dart.json ]; then
  echo -e "${GREEN}Setting up Dart${RESET}"
  wget -nc http://storage.googleapis.com/dart-archive/channels/stable/release/latest/sdk/dartsdk-linux-x64-release.zip -O $DART_ZIP
  unzip $DART_ZIP -d $DIR_LIB

  for target in $DART_BIN_DIR/* ; do
    if [ -f $target ]; then
      name=`basename $target`
      echo -e "${GREEN}Linking $name ${RESET}"
      rm -f $DIR_BIN/$name
      ln -s $target $DIR_BIN/$name
    fi
  done

  touch $DIR_INSTALLED/dart.json
else
  echo -e "${YELLOW}Dart has already been set up${RESET}"
fi
