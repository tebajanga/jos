# Joint Operating System

#### Bachelor Degree Final Year Project, October 2015 - July 2016

#### Developers

* Timothy Anthony
* Mohammed Abdallah
* Elifuraha Giliad
* Eurad Onesphory
* Elisha Richard
* Goodluck Tairo

## Description

JOS is an operating system, which is an open source operating system with Swahili language
feature for performing different operations such as files and folders management. JOS facilitate
interaction and much understanding of how the operating system works because of using Swahili
as the interaction language between the user and the JOS itself.

## Technologies Used

* C
* Assembly

## JOS File Structure

These are the most important files and directories in the Joint Operating System:

* jos/
* jos/bitmaps/ - Contains the JOS background images and icons.
* jos/boot/
* jos/components/
* jos/documentations/ - Contains JOS user manual and other document files.
* jos/images/
* jos/objects/ - Contains JOS object files.
* jos/programs - Contains JOS user programs source codes.
* jos/kijenzi.sh - JOS building file.

## Setup

This section explains how to get JOS, building and running it on the emulator such as
QEMU. The section also presents briefly about JOS Terminal.

### Environment Preparation

Before being able to build and run the JOS, you need to prepare and configure the working
environment. This include the computer running either a Linux or Window based Operating
System having a minimum requirements of 1 GHz processor and 256 MB of RAM. 

You can use the computer having Window as operating system but we advise you to use the one running any
Linux distro because it will be easy to install or update the tools and dependencies needed for
building and running JOS. We tested the JOS in a computer running Ubuntu Mate 16 without any
problem.

### Dependencies Addition

Also you need to download and configure the tools and dependencies such as *GCC*, *QEMU*, *Pluma*
and *Hexedit* which helps in the whole process of building and running JOS.

The commands used in this manual document for installation and configuration of different tools
and dependencies were run on a computer running Ubuntu Mate. If you using another Linux
distro and encounter any problem find the appropriate command to install and configure it, or
find the appropriate tool or dependencies which will work on Windows in case you are using the
computer which is installed with the Windows.

#### GNU Compiler Collection

The GNU Compiler Collection (GCC) is a compiler system produced by the GNU Project supporting
various programming languages. GCC is a key component of the GNU toolchain.

GCC will be used to compile Joint Operating System source codes files of .c and .asm into .o files
which are object files. And then GCC will link those object files to create a different single files
which will be in binary format and executable. In our case it will create a binary files for
Bootloader and Kernel.

Mostly Linux distro comes with GCC already, in case you do not have it, you can use the following
command(s) to install it.
_(Type the command on your Terminal, and don’t forget to supply the root password if asked)_

`sudo apt-get install gcc`

To verify if the GCC is already installed you can use one of the following commands;

`gcc -v`

`gcc –version`

If you still encounter any problem installing GCC, type the following commands one after another;

_(This will install GCC version 4.8)_

`sudo apt-get install python-software-properties`

`sudo add-apt-repository ppa:ubuntu-toolchain-r/test`

`sudo apt-get update`

`sudo apt-get install gcc-4.8`

`sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50`

#### Quick Emulator

QEMU is a generic and open source machine emulator and virtualizer. It is free and open source
tool that allows users to create and manage Virtual machines inside the host operating system.
The resources of the host operating system, such as hard drive, RAM, Processor, will be divided
and shared by the guest operating systems (Virtual machines).

QEMU will be used to run the Joint Operating System by taking the values of the JOS image file,
file system as the parameters and the number of processor and amount of RAM to use.

To install QEMU, write the following command on your Terminal.

`sudo apt-get install qemu-kvm qemu virt-manager virt-viewer libvirt-bin`

You may use other Emulator such as _Virtualbox_ and _Bochs_ which they both offer the same functionalities.

#### Pluma

Pluma is a graphical application which supports editing multiple text files in one window (tabs or
MDI). It fully supports international text through its use of the Unicode UTF-8 encoding. As a
general purpose text editor, pluma supports most standard editor features, and emphasizes
simplicity and ease of use.

Pluma will be used to view the source codes of the JOS, which will allow you to do more
configuration and adding new functionalities by modifying the source codes.

Mostly pluma comes as the default text editor for the Ubuntu Mate distro, but you can use the following command to install it;

`sudo apt-get install pluma-dev`

If you encounter with any problem while installing, type the following commands one after another.

`sudo apt-get update`

`sudo apt-get install pluma-dev`

#### Hexedit

Hexedit is among of the editors which deals with binary or byte files. Hexedit is a type of
computer program that allows manipulation of the fundamental binary data that constitutes a
computer file. The name 'hex' comes from 'hexadecimal': a standard numerical format for
representing binary data.

Hexedit will be used to view the content of the linked executable binary file i.e. Bootloader and
Kernel and verifying them if they are in good format of values and size.

To install Hexedit on your computer, type the following commands on your Terminal one after another;

`sudo apt-get update`

`sudo apt-get install hexedit`

## Compiling and Building JOS

The process of compiling and building the Joint Operating is performed by following these steps:

1. On your terminal navigate to where the folder of JOS source codes present.
2.  Change the permission of all the files and folders of JOS source codes. 
You can use the following command on your terminal.
`chmod 777 –R jos`
3. Change the current working directory to be that of the JOS source code. 
You can use the following command on your terminal.
`cd jos`
4. Run the building file called kijenzi.sh present on the root of the JOS source codes files.
You can use the following command on your terminal
`./kijenzi.sh`

Or you can double click the kijenzi.sh file and choose to run it in terminal.
Then you should wait for the process of JOS compilation and building to be finished and be
presented with the JOS Terminal as the first interface which is a CLI for the interaction between
the user and the JOS itself.

#### _For more derails, check the User Manual file in the jos/documentations folder._

## Legal

Copyright (c) 2016 Joint OS Development Team

This software is licensed under MIT license
