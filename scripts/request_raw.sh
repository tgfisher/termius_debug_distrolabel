#!/usr/bin/env bash

HISTFILE=;

SA_OS_TYPE=\"Linux\"
REAL_OS_NAME=`uname`

if [ \"$REAL_OS_NAME\" != \"$SA_OS_TYPE\" ] ; then
    echo `uname`
else
    DISTRIB_ID=\\\"`cat /etc/*release`\\\"
    echo $DISTRIB_ID;
fi;

exit;
