library common;

import 'dart:io';
import 'package:path/path.dart';

// Directories
final DIR_HOME = Platform.environment['HOME'];
final DIR_PROJECT = new File.fromUri(Platform.script).parent.path;
final DIR_CONFIGURATION = join(DIR_PROJECT, 'configuration');
final DIR_BACKUP = join(DIR_HOME, 'backup');
// Colors
const RED = '\u001b[31m';
const GREEN = '\u001b[32m';
const BLUE = '\u001b[34m';
const YELLOW = '\u001b[33m';
const RESET = '\u001b[0m';
