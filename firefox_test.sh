#########################################################################
# File Name: selenium_test.sh
# Author: eric.xu
# mail: eric.xu@libratone.com.cn
# Created Time: 2017-09-11 17:29:44
#########################################################################
#!/bin/bash

ps -aux |grep chrome | awk '{print $2}' | xargs kill -9
export DISPLAY=:7
export CHROME_DEVEL_SANDBOX=/usr/local/sbin/chrome-devel-sandbox
service xvfbd start
echo "DISPLAY=$DISPLAY"
ps -aux |grep Xvfb
firefox www.baidu.com
service xvfbd stop
