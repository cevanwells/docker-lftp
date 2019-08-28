#!/bin/sh
set -e

ARGS="--rcfile $APP_DIR/config/lftp.conf"

case "$FTP_OP" in
	"get"|"mget")
		lftp $ARGS -c "mget -e -P 5 -O ${LOCAL_TARGET}/ ftps://${FTP_USER}:${FTP_PASS}@${FTP_IP}/${FTP_TARGET}"
		;;
	"put"|"mput")
		lftp $ARGS -c "mput -e -P 5 -O ftps://${FTP_USER}:${FTP_PASS}@${FTP_IP}/${FTP_TARGET} ${LOCAL_TARGET}"
		;;
	*)
		echo "Operation not supported"
esac
# lftp --rcfile $APP_DIR/config/lftp.conf -c "${FTP_OP} -e -O ${LOCAL_TARGET}/ ftps://${FTP_USER}:${FTP_PASS}@${FTP_IP}/${FTP_TARGET}"