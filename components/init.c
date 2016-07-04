// init: The initial user-level program

#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

char *argv[] = { "cli", 0 };

int
main(void)
{
  int pid, wpid;

  if(open("console", O_RDWR) < 0){
    mknod("console", 1, 1);
    open("console", O_RDWR);
  }
  dup(0);  // stdout
  dup(0);  // stderr

  for(;;){
    printf(1, "JOS Terminal starting\n");
    pid = fork();
    if(pid < 0){
      printf(1, "Terminal: fork failed\n");
      exit();
    }
    if(pid == 0){
      exec("cli", argv);
      printf(1, "JOS Terminal starting: failed\n");
      exit();
    }
    while((wpid=wait()) >= 0 && wpid != pid)
      printf(1, "zombie!\n");
  }
}
