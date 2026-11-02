#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main(int argc, char *argv[]) {
    printf("PID: %d\n", getpid());          /* печатаем идентификатор */

    if (argc > 1) {                          /* если передан аргумент — меняем приоритет */
        int prio = atoi(argv[1]);
        if (nice(prio) == -1) {
            perror("nice");
        } else {
            printf("nice set to: %d\n", prio);
        }
    }

    printf("current nice: %d\n", nice(0));   /* показать текущий приоритет */
    fflush(stdout);

    while (1) {                              /* вечный цикл */
        sleep(1);
    }
    return 0;
}
