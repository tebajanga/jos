#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"

int
main(int argc, char *argv[])
{
  printf(1, "List of JOS Available Commands\n");
  printf(1, "------------------------------\n");
  printf(1, "calc     - Running a calculator.\n");
  printf(1, "cat      - Viewing content of a file.\n");
  printf(1, "clear    - Clearing the screen.\n");
  printf(1, "cli      - Starting JOS Command Line Interface.\n");
  printf(1, "desktop  - Starting JOS in Graphical User Interface.\n");
  printf(1, "echo     - Displaying text on a screen.\n");
  printf(1, "help     - Viewing list of all available commands.\n");
  printf(1, "kill     - Killing a process.\n");
  printf(1, "ls       - Listing all files and folders.\n");
  printf(1, "mkdir    - Creating a folder.\n");
  printf(1, "shutdown - Exiting Joint Operating System.\n");
  printf(1, "version  - Showing current JOS Version.\n");
  exit();
}
