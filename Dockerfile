FROM node:12.0-alpine

LABEL maintainer="yaokun <yaokun@bwcxtech.com>"

ENV YAPI_SERVER_PORT=3000 \
    YAPI_ADMIN_ACCOUNT=admin@bwcxtech.com \
    YAPI_DB_SERVERNAME=yapi \
    YAPI_DB_PORT=27017 \
    YAPI_DB_DATABASE=yapi \
    YAPI_DB_USER=yapi \
    YAPI_DB_PASS=yapi \
    YAPI_MAIL_ENABLE=true \
    YAPI_MAIL_HOST=smtp.bwcxtech.com \
    YAPI_MAIL_PORT=465 \
    YAPI_MAIL_FROM=admin@bwcxtech.com \
    YAPI_MAIL_AUTH_USER=admin@bwcxtech.com \
    YAPI_MAIL_AUTH_PASS=admin

RUN set -x \
    && apk add --no-cache git make openssl gcc python \
    && mkdir yapi \
    && cd yapi \
    && git clone --depth=1 https://github.com/YMFE/yapi.git vendors

COPY entrypoint.sh /usr/local/bin/
COPY config.json /yapi/

EXPOSE 3000

ENTRYPOINT ["sh","/usr/local/bin/entrypoint.sh"]