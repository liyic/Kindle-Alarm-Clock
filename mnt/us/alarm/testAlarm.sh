{
   killall python
   kill -9 $(lsof -ti:8000)
   kill -9 $(lsof -ti:8080)
   sleep 5
   mntroot rw
   mkfifo /tmp/test.fifo
   cd /mnt/us/alarm
   sleep 2
#   python httpserver.py & > /dev/null 2>&1
#   python alarmServer.py & > /dev/null 2>&1
   python httpserver.py &
   python alarmServer.py &
   sleep 2
   /mnt/us/extensions/WebLaunch/bin/start.sh
} &
return 0
