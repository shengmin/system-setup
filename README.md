### Prerequisites
```sh
# Install Git
sudo apt-get install git
# Generate SSH key
ssh-keygen -t rsa -C "me@shengmin.me"
# Add private key to SSH agent
ssh-add ~/.ssh/id_rsa
# Add public key to github.com and bitbucket.org
cat ~/.ssh/id_rsa.pub
```

### Automatic Setup
```sh
# Download, Install and Configure
./setup-ubuntu.bash
```

### Manual Setup
- Install [Sublime Text Package Control plugin](https://sublime.wbond.net/installation)
- Install [Sublime Text Dart plugin](https://github.com/dart-lang/dart-sublime-bundle#readme)
