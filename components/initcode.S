# Initial process execs /kipindi.

#include "syscall.h"
#include "traps.h"


# exec(kipindi, argv)
.globl start
start:
  pushl $argv
  pushl $kipindi
  pushl $0  // where caller pc would be
  movl $SYS_exec, %eax
  int $T_SYSCALL

# for(;;) exit();
exit:
  movl $SYS_exit, %eax
  int $T_SYSCALL
  jmp exit

# char kipindi[] = "/kipindi\0";
kipindi:
  .string "/kipindi\0"

# char *argv[] = { kipindi, 0 };
.p2align 2
argv:
  .long kipindi
  .long 0
