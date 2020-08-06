#!/bin/bash

#set -x

# config
cd /yapi
sed -i -e "s|###YAPI_SERVER_PORT###|$YAPI_SERVER_PORT|g" config.json && \
sed -i -e "s|###YAPI_ADMIN_ACCOUNT###|$YAPI_ADMIN_ACCOUNT|g" config.json && \
sed -i -e "s|###YAPI_DB_SERVERNAME###|$YAPI_DB_SERVERNAME|g" config.json && \
sed -i -e "s|###YAPI_DB_PORT###|$YAPI_DB_PORT|g" config.json && \
sed -i -e "s|###YAPI_DB_DATABASE###|$YAPI_DB_DATABASE|g" config.json && \
sed -i -e "s|###YAPI_DB_USER###|$YAPI_DB_USER|g" config.json && \
sed -i -e "s|###YAPI_DB_PASS###|$YAPI_DB_PASS|g" config.json && \
sed -i -e "s|###YAPI_MAIL_ENABLE###|$YAPI_MAIL_ENABLE|g" config.json && \
sed -i -e "s|###YAPI_MAIL_HOST###|$YAPI_MAIL_HOST|g" config.json && \
sed -i -e "s|###YAPI_MAIL_PORT###|$YAPI_MAIL_PORT|g" config.json && \
sed -i -e "s|###YAPI_MAIL_FROM###|$YAPI_MAIL_FROM|g" config.json && \
sed -i -e "s|###YAPI_MAIL_AUTH_USER###|$YAPI_MAIL_AUTH_USER|g" config.json && \
sed -i -e "s|###YAPI_MAIL_AUTH_PASS###|$YAPI_MAIL_AUTH_PASS|g" config.json

# run
cd /yapi/vendors
npm install --production --registry https://registry.npm.taobao.org
npm run install-server
node server/app.js