cd /root/lab
chmod +x timelog.sh

# 1) убедиться, что скрипт работает
./timelog.sh >> /tmp/logscript
cat /tmp/logscript

# 2) поставить задание в cron
( crontab -l 2>/dev/null; echo "*/2 * * * * /root/lab/timelog.sh >> /tmp/logscript 2>&1" ) | crontab -
crontab -l

# 3) запустить демон cron (в контейнере нет systemd, поэтому вручную)
cron

# 4) подождать 4–6 минут и проверить, что дописывается
sleep 300
cat /tmp/logscript
