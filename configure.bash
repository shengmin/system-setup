#!/bin/bash

source common.bash

PAM_FILE=.pam_environment
PAM_PATH=~/$PAM_FILE

# Linking .pam_environment
if [ -h $PAM_PATH ]; then
  rm $PAM_PATH
elif [ -f $PAM_PATH ]; then
  echo -e "$YELLOW$PAM_FILE already exists$RESET"
  mv $PAM_PATH $DIR_BACKUP/$PAM_FILE-$(date +%s)
fi

echo -e "$GREEN Linking $PAM_FILE$RESET"
ln -s $DIR_PROJECT/configuration/pam-environment $PAM_PATH
