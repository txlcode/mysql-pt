#!/bin/bash
table=$1
alter_conment=$2

cnn_host='127.0.0.1'
cnn_user='root'
cnn_pwd='123456'
cnn_db='test'

echo "$table"
echo "$alter_conment"
/usr/bin/pt-online-schema-change --no-version-check --set-vars innodb_lock_wait_timeout=50 --user=${cnn_user} --password=${cnn_pwd} --host=${cnn_host}  P=3306,D=${cnn_db},t=$table  --alter "${alter_conment}" --execute
