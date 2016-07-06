echo Ujenzi wa Joint Operating System.
echo --------------------------------
sleep 2

rm washa.sh
rm images/*
cp components/* ./
cp boot/* ./
cp bitmaps/* ./
cp documentations/* ./

clear

echo Utungaji na Ujenzi JOS - 0%.
echo ----------------------
sleep 2

gcc -Werror -Wall -o mkfs mkfs.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o ulib.o ulib.c
gcc -m32 -gdwarf-2 -Wa,-divide   -c -o usys.o usys.S
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o printf.o printf.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o umalloc.o umalloc.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o bitmap.o bitmap.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o jos_ui.o jos_ui.c
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o init.o init.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _kipindi init.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _kipindi > init.asm
objdump -t _kipindi | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > init.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o desktop.o desktop.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _kidadisi desktop.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _kidadisi > desktop.asm
objdump -t _kidadisi | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > desktop.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o sh.o sh.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _sh sh.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _sh > sh.asm
objdump -t _sh | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > sh.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o cli.o cli.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _amri cli.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _amri > cli.asm
objdump -t _amri | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > cli.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o echo.o echo.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _vuma echo.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _vuma > echo.asm
objdump -t _vuma | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > echo.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o ls.o ls.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _orodha ls.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _orodha > ls.asm
objdump -t _orodha | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > ls.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o clear.o clear.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _wazi clear.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _wazi > clear.asm
objdump -t _wazi | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > clear.sym

gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o pwd.o pwd.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _nilipo pwd.o ulib.o usys.o printf.o umalloc.o
objdump -S _nilipo > pwd.asm
objdump -t _nilipo | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > pwd.sym

gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o kill.o kill.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _ua kill.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _ua > kill.asm
objdump -t _ua | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > kill.sym

gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o help.o help.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _msaada help.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _msaada > help.asm
objdump -t _msaada | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > help.sym

gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o version.o version.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _toleo version.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _toleo > version.asm
objdump -t _toleo | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > version.sym

gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o rm.o rm.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _ondoa rm.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _ondoa > rm.asm
objdump -t _ondoa | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > rm.sym

gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o calc.o calc.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _kikokotoa calc.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _kikokotoa > calc.asm
objdump -t _kikokotoa | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > calc.sym

gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o cat.o cat.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _fungua cat.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _fungua > cat.asm
objdump -t _fungua | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > cat.sym
gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o shutdown.o shutdown.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _zima shutdown.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _zima > shutdown.asm
objdump -t _zima | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > shutdown.sym

gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o michecheto.o michecheto.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _michecheto michecheto.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _michecheto > michecheto.asm
objdump -t _michecheto | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > michecheto.sym

gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o mchecheto.o mchecheto.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _mchecheto mchecheto.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _mchecheto > mchecheto.asm
objdump -t _mchecheto | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > mchecheto.sym

gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o edita.o edita.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _edita edita.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _edita > edita.asm
objdump -t _edita | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > edita.sym

gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o mkdir.o mkdir.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _sariki mkdir.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _sariki > mkdir.asm
objdump -t _sariki | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > mkdir.sym

gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o nakili.o nakili.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _nakili nakili.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _nakili > nakili.asm
objdump -t _nakili | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > nakili.sym

gcc -fno-pic -static -fno-builtin -fno-strict-aliasing -fvar-tracking -fvar-tracking-assignments -O0 -g -Wall -MD -gdwarf-2 -m32 -w -fno-omit-frame-pointer -fno-stack-protector   -c -o peleka.o peleka.c
ld -m    elf_i386 -N -e main -Ttext 0 -o _peleka peleka.o ulib.o usys.o printf.o umalloc.o bitmap.o jos_ui.o
objdump -S _peleka > peleka.asm
objdump -t _peleka | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$/d' > peleka.sym

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

./mkfs jos_fs.img _amri _edita _fungua _kidadisi _kikokotoa _kipindi _msaada _mchecheto _michecheto _nakili _nilipo _ondoa _orodha _peleka _sariki _toleo _ua _vuma _wazi _zima KUHUSU.txt Wakuzaji.txt MSAADA.txt desktop.bmp explorer.bmp txt.bmp pic.bmp exec.bmp folder.bmp unknow.bmp _image_viewer _Editor _explorer

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
dd if=/dev/zero of=jos.img count=10000
dd if=bootblock of=jos.img conv=notrunc
dd if=kernel of=jos.img seek=1 conv=notrunc

echo "\n"
echo Ujenzi Umemalizika - 100%
echo ------------------
sleep 2

mv *.o ./objects
rm *.h
rm *.d
rm *.sym
rm *.asm
rm *.c
rm *.list
rm *.pl
rm _*
rm *.S
rm *.out
rm *.p
rm *.spec
rm *.patch
rm *.ld
rm *.hdr
rm *.ftr
rm *.bmp
rm *.txt
rm kernel
rm runoff
rm runoff1
rm cuth
rm printpcs
rm spinp
rm entryother
rm gdbutil
rm initcode
rm bootblock
rm show1
rm mkfs
cp *.img ./images
rm *.img

echo qemu-system-i386 -serial mon:stdio -hdb images/jos_fs.img images/jos.img -smp 1 -m 512 -vga std > washa.sh
chmod 777 washa.sh
#qemu-system-i386 -serial mon:stdio -hdb jos_fs.img jos.img -smp 1 -m 512 -vga std
echo "\n"
echo Ujenzi wa Joint Operating System Umemalizika
echo "\n"
sleep 5
clear
echo "Kwa matumizi yajayo"
echo "-------------------"
echo "Uta bofya washa.sh kuanza tumia Joint Operating System."
echo "Au, utaandika ./washa.sh katika kipindi chako."
sleep 10

echo "\n"
echo "Sasa Joint Operating System inaanza..."
sleep 5
clear
qemu-system-i386 -serial mon:stdio -hdb images/jos_fs.img images/jos.img -smp 1 -m 512 -vga std

