//peleka.c
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
    // write(1, buf, n);
    printf(fd2, "%s", buf);
  }
  if(n < 0){
    printf(1, "peleka: imeshindwa kusoma\n");
    exit();
  }
}

int
main(int argc, char *argv[])
{
  int fd1;
  if(argc < 3){
    printf(1, "peleka: specify file name and dir to move file to eleza jina la faili na saraka la kupelekwa faili\n");
    exit();
  }
  if((fd1 = open(argv[1], 0)) < 0){
    printf(1, "peleka: imeshidwa kupeleka faili.\n");
    exit();
  }
  int fd2;
  
  //Append "/" to argv[2] and then append argv[1] to it. 
  int s1 = strlen(argv[1]); //String length of file name to be moved
  int s2 = strlen(argv[2]); //String length of directory where file is to be moved
  char * s = (char *) malloc(s1+s2+1+1);
  int n = s2;
  char * temp = s;
  char * fileName = argv[1];
  while(n-- > 0 && (*temp++ = *argv[2]++) != 0)
    ;
  *temp++ = '/';
  n = s1;
  while(n-- > 0 && (*temp++ = *argv[1]++) != 0)
    ;
  // printf(1, "%s\n", s);

  if ((fd2 = open(s, O_CREATE | O_RDWR)) < 0) {
    printf(1, "peleka: imeshindwa peleka faili.\n");
    exit();
  }


  cat(fd1,fd2);
  close(fd1);
  close(fd2);
  if(unlink(fileName) < 0){
      printf(2, "peleka: %s imeshindwa kufuta \n", fileName);
  }
  exit();
}
