#!/bin/sh
set -e

export FTP_OP=$1
export FTP_TARGET=$2
export LOCAL_TARGET=$3

/usr/local/bin/docker-cmd.sh