//edita.c
#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"
#include "fcntl.h"

char buf[512];

void
edita(int fd,char* filename)
{
  int n;
  int fp;
  
  if ((fp = open(filename, O_CREATE | O_RDWR)) < 0) {
    printf(1, "edita: imeshindwa andaa faili: %s\n", filename);
    exit();
  }

  while((n = read(fd, buf, sizeof(buf))) > 0){
    // write(1, buf, n);
    printf(fp, "%s", buf);
  }
  close(fp);
  if(n < 0){
    printf(1, "edita: imeshindwa kusoma\n");
    exit();
  }
}

int
main(int argc, char *argv[])
{

  if(argc <= 2){
    char* filename = "faili.txt";
    if(argv[1])
      filename = argv[1]; 
    edita(0,filename);
    printf(1, "\n");
    exit();
  }
  exit();
}
