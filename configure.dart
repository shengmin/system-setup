import 'dart:io';
import 'dart:async';
import 'package:path/path.dart';
import 'common.dart';

void main() {
  var links = [
    new Linking('gitconfig', join(DIR_HOME, '.gitconfig')),
    new Linking('pam-environment', join(DIR_HOME, '.pam_environment')),
    new Linking('sublime-text', join(DIR_HOME, '.config/sublime-text-2/Packages/User/Preferences.sublime-settings'))
  ];

  // Linking configuration files
  for (var link in links) {
    var now = new DateTime.now().millisecondsSinceEpoch.toString();
    if (FileSystemEntity.isLinkSync(link.link)) {
      // Remove the existing link
      new Link(link.link).delete();
    } else if (FileSystemEntity.isFileSync(link.link)) {
      // Back up the file
      print('$YELLOW File ${link.link} exists$RESET');
      new File(link.link).renameSync(
        join(DIR_BACKUP, now + '-' + basename(link.link)));
    }

    print('$GREEN Linking ${link.target}$RESET');
    new Link(link.link).createSync(join(DIR_CONFIGURATION, link.target));
  }
}

class Linking {
  final String target;
  final String link;

  Linking(this.target, this.link);
}
