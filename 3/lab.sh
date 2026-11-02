# 1. запустить rsyslog в фоне
/usr/sbin/rsyslogd
sleep 1
ps aux | grep rsyslog          # должен быть процесс

# 2. скомпилировать и запустить программу
gcc -o syslog_test syslog_test.c
./syslog_test

# 3. проверить, что запись появилась
tail -n 10 /var/log/syslog | grep lab-u3
# если пусто — посмотри, куда пишет:
ls -l /var/log/
tail -n 10 /var/log/messages 2>/dev/null
logger -t lab-u3 "hello via logger"
tail -n 5 /var/log/syslog | grep lab-u3