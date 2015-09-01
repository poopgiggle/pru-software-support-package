I'm trying to learn about the PRU using the PRU Cape, but TI's labs for this seem to be built
around using TI's Code Composer Studio's GUI application. Nothing against CCS, but I'd rather just
use emacs and Makefiles to develop code for the PRU. This fork aims to make it easier to use TI's
PRU C compiler and associated tools from the command line to work with the PRU.

Right now, the only addition is a Makefile that should automate building PRU code. Steps to get
this working are:

1. Download CCS w/ PRU tools (needed for compiler, headers, libraries)
2. Copy the Makefile to the directory where the project is
3. Set CCSDIR to the directory where CCS is installed
4. Set BASEDIR to the pru-software-support-package root directory
5. Set SRCFILE to the name of the C source file
6. Run make
7. Copy text.bin and data.bin to BBB
8. Use something like PyPRUSS to run the example on the BBB

This project is poorly tested, and almost certainly unnecessary.



Original ReadMe.txt:

Programmable Real-time Unit (PRU) Software Support Package release 1.1.x


DESCRIPTION

   The PRU Software Support Package is an add-on package that provides a framework 
   and examples for developing software for the Programmable Real-time Unit 
   sub-system and Industrial Communication Sub-System (PRU-ICSS) in the supported 
   TI processors.  The PRU-ICSS achieves deterministic, real-time processing, direct 
   access to I/Os and meets ultra-low-latency requirements. 

   This software package contains example PRU firmware code as well as application 
   loader code for the host OS. The examples demonstrate the PRU capabilities to 
   interact with and control the system and its resources.

   For more details about the PRU, visit 
      
        http://processors.wiki.ti.com/index.php/PRU-ICSS



WHAT's INCLUDED?

   This package includes the following resources:

	DIRECTORY	CONTENTS
	---------	--------
        examples	Basic PRU examples	
	include		PRU firmware header files
	labs		Source code for step-by-step labs
	lib             PRU library files
	patches	 	Linux kernel patches to enable PRU support
	pru_cape	Demo software for the BeagleBone PRU Cape



ADDITIONAL RESOURCES

   For more information about the PRU, visit: 

	PRU-ICSS Wiki            – http://processors.wiki.ti.com/index.php/PRU-ICSS
	PRU Training Slides      – http://www.ti.com/sitarabootcamp
	PRU Evaluation Hardware  – http://www.ti.com/tool/PRUCAPE
        Support                  – http://e2e.ti.com
   