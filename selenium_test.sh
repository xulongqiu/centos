#########################################################################
# File Name: selenium_test.sh
# Author: eric.xu
# mail: eric.xu@libratone.com.cn
# Created Time: 2017-09-11 17:29:44
#########################################################################
#!/bin/bash

if [ -f /root/.bashrc ]; then
    source /root/.bashrc
fi

export DISPLAY=:7
service xvfb stop
service xvfb start
ps -axu |grep firefox | awk '{print $2}' | xargs kill 
/usr/bin/python3 /auto_test/pyunit_autotest/main.py web
service xvfb stop
