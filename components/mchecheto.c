//mchecheto.c
#include "types.h"
#include "user.h"

int main(void){
	int childpid = fork();
	if(childpid < 0){
		printf(1,"Mchecheto umeshindwa %d\n", childpid);
	}
	else if(childpid > 0){
		printf(1,"Mimi ni mchecheto Mama. Nina namba %d, Mtoto ana %d\n",getpid(),childpid);
		wait();
	}
	else{
		printf(1,"Mimi ni mchecheto Mtoto. Nina namba %d, Mama ana %d\n",getpid(),getppid());
		wait();	
	}
	exit();
}
