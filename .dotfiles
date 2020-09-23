!#/usr/bin/env bash

#OS Settings

case $(uname) in
  (Linux)
    if [ -n $OCI_CONFIG_FILE ]; then is_oci_shell=true; fi
  ;;
  (CYGWIN*)
  ;;
esac

source .bash_prompt
source .aliases