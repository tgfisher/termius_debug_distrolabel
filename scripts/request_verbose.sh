#!/usr/bin/env bash

HISTFILE=;

SA_OS_TYPE=\"Linux\"
REAL_OS_NAME=`uname`
DISTRIB_ID=\\\"`cat /etc/*release`\\\"

echo "REAL_OS_NAME is '${REAL_OS_NAME}'"

echo "SA_OS_TYPE is '${SA_OS_TYPE}'"

echo -e "\n----------------------------------\n(DISTRIB_ID filename glob match.)\n"
echo "$(ls -la /etc/*release)"
echo -e "----------------------------------\n"

echo "DISTRIB_ID is '$(cat /etc/*release | awk -F "=" '$1 == "DISTRIB_ID" {print $2}')'"

echo -e "\nOther 'ID's are:"
cat /etc/*release | awk -F "=" '$1 ~ "(_|^)ID" {printf "%s=%s\n", $1, $2}'

echo -e "\nOther 'DISTRIB's are:"
cat /etc/*release | awk -F "=" '$1 ~ "DISTRIB" {printf "%s=%s\n", $1, $2}'

echo -e "\nAll Variable Names are:"
cat /etc/*release | awk '$1 ~ ".=" {print $1}'

exit;
