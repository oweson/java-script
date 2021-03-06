#!/bin/bash
if [ "$1" == "run" ]; then
    java -jar  Webstack-Guns-nkt-1.0.jar
else if [ "$1" == "start" ]; then
    nohup java -jar Webstack-Guns-nkt-1.0.jar &
    echo "Application is starting."
else if [ "$1" == "stop" ]; then
    PID=$(ps -ef | grep Webstack-Guns-nkt-1.0.jar | grep -v grep | awk '{ print $2 }')
    if [ -z "$PID" ]; then
        echo Application is already stopped
    else
        echo kill $PID
        kill $PID
    fi
else if [ "$1" == "status" ]; then
    PID=$(ps -ef | grep Webstack-Guns-nkt-1.0.jar | grep -v grep | awk '{ print $2 }')
    if [ -z "$PID" ]; then
        echo Application is stopped
    else
        echo Application is running
        echo $PID
    fi
fi
fi
fi
fi
