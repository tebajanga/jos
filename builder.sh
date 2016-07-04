gcc -Werror -Wall -o mkfs mkfs.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o ulib.o ulib.c
gcc -m32 -gdwarf-2 -Wa,-divide   -c -o usys.o usys.S
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o printf.o printf.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o umalloc.o umalloc.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o bitmap.o bitmap.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o jos_ui.o jos_ui.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o init.o init.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _init init.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _init > init.asm
objdump -t _init | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > init.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o desktop.o desktop.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _desktop desktop.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _desktop > desktop.asm
objdump -t _desktop | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > desktop.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o sh.o sh.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _sh sh.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _sh > sh.asm
objdump -t _sh | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > sh.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o cli.o cli.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _cli cli.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _cli > cli.asm
objdump -t _cli | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > cli.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o echo.o echo.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _echo echo.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _echo > echo.asm
objdump -t _echo | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > echo.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o ls.o ls.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _ls ls.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _ls > ls.asm
objdump -t _ls | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > ls.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o clear.o clear.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _clear clear.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _clear > clear.asm
objdump -t _clear | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > clear.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o cat.o cat.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _cat cat.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _cat > cat.asm
objdump -t _cat | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > cat.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o shutdown.o shutdown.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _shutdown shutdown.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _shutdown > shutdown.asm
objdump -t _shutdown | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > shutdown.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o parent.o parent.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _parent parent.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _parent > parent.asm
objdump -t _parent | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > parent.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o mkdir.o mkdir.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _mkdir mkdir.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _mkdir > mkdir.asm
objdump -t _mkdir | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > mkdir.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o image_viewer.o image_viewer.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _image_viewer image_viewer.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _image_viewer > image_viewer.asm
objdump -t _image_viewer | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > image_viewer.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o Editor.o Editor.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _Editor Editor.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _Editor > Editor.asm
objdump -t _Editor | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > Editor.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o explorer.o explorer.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _explorer explorer.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _explorer > explorer.asm
objdump -t _explorer | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > explorer.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o demo.o demo.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _demo demo.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _demo > demo.asm
objdump -t _demo | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > demo.sym
./mkfs fs.img README readme.txt desktop.bmp explorer.bmp txt.bmp pic.bmp exec.bmp folder.bmp unknow.bmp _init _desktop _sh _cli _echo _ls _clear _cat _shutdown _parent _mkdir _image_viewer _Editor _explorer _demo 
used 34 (bit 6 ninode 26) free 34 log 30 total 20480
balloc: first 4944 blocks have been allocated
balloc: write bitmap block at sector 28
balloc: write bitmap block at sector 29
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector -fno-pic -O -nostdinc -I. -c bootmain.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector -fno-pic -nostdinc -I. -c bootasm.S
ld -m    elf_i386 -N -e start -Ttext 0x7C00 -o bootblock.o bootasm.o bootmain.o
objdump -S bootblock.o > bootblock.asm
objcopy -S -O binary -j .text bootblock.o bootblock
./sign.pl bootblock
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o bio.o bio.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o console.o console.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o exec.o exec.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o file.o file.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o fs.o fs.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o ide.o ide.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o ioapic.o ioapic.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o kalloc.o kalloc.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o kbd.o kbd.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o lapic.o lapic.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o log.o log.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o main.o main.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o mp.o mp.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o picirq.o picirq.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o pipe.o pipe.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o proc.o proc.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o spinlock.o spinlock.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o string.o string.c
gcc -m32 -gdwarf-2 -Wa,-divide   -c -o swtch.o swtch.S
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o syscall.o syscall.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o sysfile.o sysfile.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o sysproc.o sysproc.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o timer.o timer.c
gcc -m32 -gdwarf-2 -Wa,-divide   -c -o trapasm.o trapasm.S
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o trap.o trap.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o uart.o uart.c
perl vectors.pl > vectors.S
gcc -m32 -gdwarf-2 -Wa,-divide   -c -o vectors.o vectors.S
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o vm.o vm.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o msg.o msg.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o mouse.o mouse.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o gui.o gui.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o window_manager.o window_manager.c
gcc -m32 -gdwarf-2 -Wa,-divide   -c -o entry.o entry.S
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector -fno-pic -nostdinc -I. -c entryother.S
ld -m    elf_i386 -N -e start -Ttext 0x7000 -o bootblockother.o entryother.o
objcopy -S -O binary -j .text bootblockother.o entryother
objdump -S bootblockother.o > entryother.asm
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector -nostdinc -I. -c initcode.S
ld -m    elf_i386 -N -e start -Ttext 0 -o initcode.out initcode.o
objcopy -S -O binary initcode.out initcode
objdump -S initcode.o > initcode.asm
ld -m    elf_i386 -T kernel.ld -o kernel entry.o bio.o console.o exec.o file.o fs.o ide.o ioapic.o kalloc.o kbd.o lapic.o log.o main.o mp.o picirq.o pipe.o proc.o spinlock.o string.o swtch.o syscall.o sysfile.o sysproc.o timer.o trapasm.o trap.o uart.o vectors.o vm.o msg.o mouse.o gui.o window_manager.o  -b binary initcode entryother
objdump -S kernel > kernel.asm
objdump -t kernel | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > kernel.sym
dd if=/dev/zero of=xv6.img count=10000
dd if=bootblock of=xv6.img conv=notrunc
dd if=kernel of=xv6.img seek=1 conv=notrunc
qemu-system-i386 -serial mon:stdio -hdb fs.img xv6.img -smp 1 -m 512 -vga std 
xv6...
==============================
: Joint Operating Systems
: Version 0.10
-------------------------------
: (c) 2016 - JOS-FYP
===============================

Type a command to continue
or type ls to view list of all available commands
JOS Terminal starting
$ 