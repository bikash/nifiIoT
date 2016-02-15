#!/bin/sh
TMP_DATE=`date "+%Y-%m-%d% %H:%M:%S"`
CURL="curl -v -H \"Accept: application/json\" -H \"Content-type: application/json\" -X POST -d '{\"device\":{\"device_uuid\":\"aa-bb-cc-dd\",\"account_uuid\":\"your_own_address@mydomain.co.jp\",\"key1\":\"value1\",\"created_at\":\"`echo $TMP_DATE`\"}}'  http://localhost:10080/contentListener"
eval $CURL