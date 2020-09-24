#! /usr/bin/env bash

#OS Settings

case $(uname) in
  (Linux)
    if [ -n $OCI_CONFIG_FILE ]; then is_oci_shell=true; fi
  ;;
  (CYGWIN*)
  ;;
esac

# OCI
#
if [ $is_oci_shell ]; then
  source /etc/bashrc.cloudshell
  export TZ="/usr/share/zoneinfo/America/Chicago"
  export TF_VAR_tenancy_ocid=$OCI_CLI_TENANCY
  #OCI_CLI_PROFILE
  export SHELL_HOST_NAME=':cloud:shell ($OCI_CLI_PROFILE)'
else
  export SHELL_HOST_NAME='\h'
fi

source ~/.bash_prompt
source ~/.aliases