//parent.c
#include "types.h"
#include "user.h"

int main(void){
	int childpid = fork();
	if(childpid < 0){
		printf(1,"Fork failed %d\n", childpid);
	}
	else if(childpid > 0){
		printf(1,"I am the parent. My pid is %d, Child id is %d\n",getpid(),childpid);
		wait();
	}
	else{
		printf(1,"I am the child. My pid is %d, My parent id is %d\n",getpid(),getppid());	
	}
}
