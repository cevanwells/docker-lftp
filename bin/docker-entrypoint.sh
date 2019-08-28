#!/bin/sh
set -e

export FTP_OP=$1
export FTP_TARGET=$2
export LOCAL_TARGET=$APP_DIR/data
if [ ! -z "$3" ]; then
	export LOCAL_TARGET="${LOCAL_TARGET}/${3}"
fi

/usr/local/bin/docker-cmd.sh