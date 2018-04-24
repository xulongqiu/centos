#########################################################################
# File Name: nginx.sh
# Author: eric.xu
# mail: eric.xu@libratone.com.cn
# Created Time: 2017-12-15 13:55:52
#########################################################################
#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage $0 <start|stop/restart>"
    exit 1
fi

case $1 in
    "start")
        service nginx start
        ;;
    "stop")
        service nginx stop
        ;;
    "restart")
        service nginx restart
        ;;
    *)
        echo "Usage: $0 <start|stop/restart>"
esac
