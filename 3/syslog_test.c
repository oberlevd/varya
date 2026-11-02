#include <syslog.h>

int main(void) {
    openlog("lab-u3", LOG_PID, LOG_USER);
    syslog(LOG_INFO, "hello from lab U3");
    closelog();
    return 0;
}
