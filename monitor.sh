#########################################################################
# File Name: monitor.sh
# Author: eric.xu
# mail: eric.xu@libratone.com.cn
# Created Time: 2017-12-15 13:35:10
#########################################################################
#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage $0 <start|stop/restart>"
    exit 1
fi

case $1 in
    "start")
        uwsgi3 --ini monitor.ini
        ;;
    "stop")
        uwsgi3 --stop monitor.pid
        ;;
    "restart")
        uwsgi3 --reload monitor.pid
        ;;
    *)
        echo "Usage: $0 <start|stop/restart>"
esac
