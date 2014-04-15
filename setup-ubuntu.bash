#!/bin/bash

source common.bash

./setup-dart.bash
$DIR_BIN/pub get
$DIR_BIN/dart configure.dart
