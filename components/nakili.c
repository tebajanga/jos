//nakili.c
#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"
#include "fcntl.h"

char buf[512];

void
cat(int fd1, int fd2)
{
  int n;

  while((n = read(fd1, buf, sizeof(buf))) > 0) {
    //write(1, buf, n);
    printf(fd2, "%s", buf);
  }
  if(n < 0){
    printf(1, "nakili: imeshindwa kusoma\n");
    exit();
  }
}

int
main(int argc, char *argv[])
{
  int fd1;
  if(argc < 3){
    printf(1, "nakili: imeshindwa kusoma\n");
    exit();
  }
  if((fd1 = open(argv[1], 0)) < 0){
    printf(1, "nakili: imeshindwa fungua %s\n", argv[1]);
    exit();
  }
  int fd2;
  
  if ((fd2 = open(argv[2], O_CREATE | O_RDWR)) < 0) {
    printf(1, "nakili: imeshindwa andaa faili: %s\n", argv[2]);
    exit();
  }
  cat(fd1,fd2);
  close(fd1);
  close(fd2);
  exit();
}
