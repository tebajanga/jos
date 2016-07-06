// init: The initial user-level program

#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

char *argv[] = { "amri", 0 };

int
main(void)
{
  int pid, wpid;

  if(open("kioneshi", O_RDWR) < 0){
    mknod("kioneshi", 1, 1);
    open("kioneshi", O_RDWR);
  }
  dup(0);  // stdout
  dup(0);  // stderr

  for(;;){
    printf(1, "JOS imeanzisha kipindi\n");
    pid = fork();
    if(pid < 0){
      printf(1, "Kipindi: Kimesitishwa\n");
      exit();
    }
    if(pid == 0){
      exec("amri", argv);
      printf(1, "JOS imeanzisha kipindi: imesitishwa\n");
      exit();
    }
    while((wpid=wait()) >= 0 && wpid != pid)
      printf(1, "zombie!\n");
  }
}
