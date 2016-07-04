#include "types.h"
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
  int i;

  if(argc < 2){
    printf(2, "matumizi: sarikisha faili...\n");
    exit();
  }

  for(i = 1; i < argc; i++){
    if(mkdir(argv[i]) < 0){
      printf(2, "sarikisha: %s imeshindwa tengeneza\n", argv[i]);
      break;
    }
  }

  exit();
}
