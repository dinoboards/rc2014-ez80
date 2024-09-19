SHELL = cmd.exe

#
# ZDS II Make File - rc2014-firmware project, release configuration
#
# Generated by: ZDS II - eZ80Acclaim! 5.3.5 (Build 23020901)
#   IDE component: d:5.3.0:23020901
#   Install Path: Z:\ZDS\
#

RM = del

# ZDS base directory
ZDSDIR = Z:\ZDS
ZDSDIR_ESCSPACE = Z:\ZDS

# ZDS bin directory
BIN = $(ZDSDIR)\bin

# ZDS include base directory
INCLUDE = Z:\ZDS\include
INCLUDE_ESCSPACE = Z:\ZDS\include

# ZTP base directory
ZTPDIR = Z:\ZDS\ZTP2.5.1
ZTPDIR_ESCSPACE = Z:\ZDS\ZTP2.5.1

# project directory
PRJDIR = Z:\rc2014-ez80\firmware
PRJDIR_ESCSPACE = Z:\rc2014-ez80\firmware

# intermediate files directory
WORKDIR = Z:\rc2014-ez80\firmware\release
WORKDIR_ESCSPACE = Z:\rc2014-ez80\firmware\release

# output files directory
OUTDIR = Z:\rc2014-ez80\firmware\release\
OUTDIR_ESCSPACE = Z:\rc2014-ez80\firmware\release\

# tools
CC = @"$(BIN)\eZ80cc"
AS = @"$(BIN)\eZ80asm"
LD = @"$(BIN)\eZ80link"
AR = @"$(BIN)\eZ80lib"
WEBTOC = @"$(BIN)\mkwebpage"

CFLAGS =  \
-define:NDEBUG -define:_EZ80F92 -define:_EZ80ACCLAIM!  \
-define:RC2014_FIRMWARE -genprintf -NOkeepasm -keeplst -NOlist  \
-NOlistinc -NOmodsect -optsize -promote -NOreduceopt  \
-stdinc:"\"..;..\src\includes;Z:\ZDS\include\std;Z:\ZDS\include\zilog\""  \
-usrinc:"\"..;\"" -NOmultithread -NOpadbranch -NOdebug  \
-cpu:eZ80F92  \
-asmsw:"   \
	-define:_EZ80ACCLAIM!=1 -define:RC2014_FIRMWARE  \
	-include:\"..;Z:\ZDS\include\std;Z:\ZDS\include\zilog\" -list  \
	-NOlistmac -pagelen:0 -pagewidth:80 -quiet -sdiopt -warn -NOdebug  \
	-NOigcase -cpu:eZ80F92"

ASFLAGS =  \
-define:_EZ80ACCLAIM!=1 -define:RC2014_FIRMWARE  \
-include:"\"..;Z:\ZDS\include\std;Z:\ZDS\include\zilog\"" -list  \
-NOlistmac -name -pagelen:0 -pagewidth:80 -quiet -sdiopt -warn  \
-NOdebug -NOigcase -cpu:eZ80F92

LDFLAGS = @.\rc2014-firmware_release.linkcmd
build: rc2014-firmware

buildall: clean rc2014-firmware

relink: deltarget rc2014-firmware

deltarget: 
	@if exist "Z:\rc2014-ez80\firmware\bin\rc2014-release-firmware.lod"  \
            $(RM) "Z:\rc2014-ez80\firmware\bin\rc2014-release-firmware.lod"
	@if exist "Z:\rc2014-ez80\firmware\bin\rc2014-release-firmware.hex"  \
            $(RM) "Z:\rc2014-ez80\firmware\bin\rc2014-release-firmware.hex"
	@if exist "Z:\rc2014-ez80\firmware\bin\rc2014-release-firmware.map"  \
            $(RM) "Z:\rc2014-ez80\firmware\bin\rc2014-release-firmware.map"

clean: 
	@if exist "Z:\rc2014-ez80\firmware\bin\rc2014-release-firmware.lod"  \
            $(RM) "Z:\rc2014-ez80\firmware\bin\rc2014-release-firmware.lod"
	@if exist "Z:\rc2014-ez80\firmware\bin\rc2014-release-firmware.hex"  \
            $(RM) "Z:\rc2014-ez80\firmware\bin\rc2014-release-firmware.hex"
	@if exist "Z:\rc2014-ez80\firmware\bin\rc2014-release-firmware.map"  \
            $(RM) "Z:\rc2014-ez80\firmware\bin\rc2014-release-firmware.map"
	@if exist "$(WORKDIR)\build-date.obj"  \
            $(RM) "$(WORKDIR)\build-date.obj"
	@if exist "$(WORKDIR)\build-date.lis"  \
            $(RM) "$(WORKDIR)\build-date.lis"
	@if exist "$(WORKDIR)\build-date.lst"  \
            $(RM) "$(WORKDIR)\build-date.lst"
	@if exist "$(WORKDIR)\build-date.src"  \
            $(RM) "$(WORKDIR)\build-date.src"
	@if exist "$(WORKDIR)\clib.obj"  \
            $(RM) "$(WORKDIR)\clib.obj"
	@if exist "$(WORKDIR)\clib.lis"  \
            $(RM) "$(WORKDIR)\clib.lis"
	@if exist "$(WORKDIR)\clib.lst"  \
            $(RM) "$(WORKDIR)\clib.lst"
	@if exist "$(WORKDIR)\clib.src"  \
            $(RM) "$(WORKDIR)\clib.src"
	@if exist "$(WORKDIR)\cpu-freq-calculator.obj"  \
            $(RM) "$(WORKDIR)\cpu-freq-calculator.obj"
	@if exist "$(WORKDIR)\cpu-freq-calculator.lis"  \
            $(RM) "$(WORKDIR)\cpu-freq-calculator.lis"
	@if exist "$(WORKDIR)\cpu-freq-calculator.lst"  \
            $(RM) "$(WORKDIR)\cpu-freq-calculator.lst"
	@if exist "$(WORKDIR)\cpu-freq-calculator.src"  \
            $(RM) "$(WORKDIR)\cpu-freq-calculator.src"
	@if exist "$(WORKDIR)\cstartup.obj"  \
            $(RM) "$(WORKDIR)\cstartup.obj"
	@if exist "$(WORKDIR)\cstartup.lis"  \
            $(RM) "$(WORKDIR)\cstartup.lis"
	@if exist "$(WORKDIR)\cstartup.lst"  \
            $(RM) "$(WORKDIR)\cstartup.lst"
	@if exist "$(WORKDIR)\dual-firmware.obj"  \
            $(RM) "$(WORKDIR)\dual-firmware.obj"
	@if exist "$(WORKDIR)\dual-firmware.lis"  \
            $(RM) "$(WORKDIR)\dual-firmware.lis"
	@if exist "$(WORKDIR)\dual-firmware.lst"  \
            $(RM) "$(WORKDIR)\dual-firmware.lst"
	@if exist "$(WORKDIR)\i2c-calculate.obj"  \
            $(RM) "$(WORKDIR)\i2c-calculate.obj"
	@if exist "$(WORKDIR)\i2c-calculate.lis"  \
            $(RM) "$(WORKDIR)\i2c-calculate.lis"
	@if exist "$(WORKDIR)\i2c-calculate.lst"  \
            $(RM) "$(WORKDIR)\i2c-calculate.lst"
	@if exist "$(WORKDIR)\i2c-calculate.src"  \
            $(RM) "$(WORKDIR)\i2c-calculate.src"
	@if exist "$(WORKDIR)\init-clocks.obj"  \
            $(RM) "$(WORKDIR)\init-clocks.obj"
	@if exist "$(WORKDIR)\init-clocks.lis"  \
            $(RM) "$(WORKDIR)\init-clocks.lis"
	@if exist "$(WORKDIR)\init-clocks.lst"  \
            $(RM) "$(WORKDIR)\init-clocks.lst"
	@if exist "$(WORKDIR)\init-f92.obj"  \
            $(RM) "$(WORKDIR)\init-f92.obj"
	@if exist "$(WORKDIR)\init-f92.lis"  \
            $(RM) "$(WORKDIR)\init-f92.lis"
	@if exist "$(WORKDIR)\init-f92.lst"  \
            $(RM) "$(WORKDIR)\init-f92.lst"
	@if exist "$(WORKDIR)\main.obj"  \
            $(RM) "$(WORKDIR)\main.obj"
	@if exist "$(WORKDIR)\main.lis"  \
            $(RM) "$(WORKDIR)\main.lis"
	@if exist "$(WORKDIR)\main.lst"  \
            $(RM) "$(WORKDIR)\main.lst"
	@if exist "$(WORKDIR)\program-info-page-shim.obj"  \
            $(RM) "$(WORKDIR)\program-info-page-shim.obj"
	@if exist "$(WORKDIR)\program-info-page-shim.lis"  \
            $(RM) "$(WORKDIR)\program-info-page-shim.lis"
	@if exist "$(WORKDIR)\program-info-page-shim.lst"  \
            $(RM) "$(WORKDIR)\program-info-page-shim.lst"
	@if exist "$(WORKDIR)\program-info-page.obj"  \
            $(RM) "$(WORKDIR)\program-info-page.obj"
	@if exist "$(WORKDIR)\program-info-page.lis"  \
            $(RM) "$(WORKDIR)\program-info-page.lis"
	@if exist "$(WORKDIR)\program-info-page.lst"  \
            $(RM) "$(WORKDIR)\program-info-page.lst"
	@if exist "$(WORKDIR)\program-info-page.src"  \
            $(RM) "$(WORKDIR)\program-info-page.src"
	@if exist "$(WORKDIR)\rom-flashing-calculator.obj"  \
            $(RM) "$(WORKDIR)\rom-flashing-calculator.obj"
	@if exist "$(WORKDIR)\rom-flashing-calculator.lis"  \
            $(RM) "$(WORKDIR)\rom-flashing-calculator.lis"
	@if exist "$(WORKDIR)\rom-flashing-calculator.lst"  \
            $(RM) "$(WORKDIR)\rom-flashing-calculator.lst"
	@if exist "$(WORKDIR)\rom-flashing-calculator.src"  \
            $(RM) "$(WORKDIR)\rom-flashing-calculator.src"
	@if exist "$(WORKDIR)\rom-flashing.obj"  \
            $(RM) "$(WORKDIR)\rom-flashing.obj"
	@if exist "$(WORKDIR)\rom-flashing.lis"  \
            $(RM) "$(WORKDIR)\rom-flashing.lis"
	@if exist "$(WORKDIR)\rom-flashing.lst"  \
            $(RM) "$(WORKDIR)\rom-flashing.lst"
	@if exist "$(WORKDIR)\rom-flashing.src"  \
            $(RM) "$(WORKDIR)\rom-flashing.src"
	@if exist "$(WORKDIR)\rst-08-io.obj"  \
            $(RM) "$(WORKDIR)\rst-08-io.obj"
	@if exist "$(WORKDIR)\rst-08-io.lis"  \
            $(RM) "$(WORKDIR)\rst-08-io.lis"
	@if exist "$(WORKDIR)\rst-08-io.lst"  \
            $(RM) "$(WORKDIR)\rst-08-io.lst"
	@if exist "$(WORKDIR)\rst-10-00-system-utils-functions.obj"  \
            $(RM) "$(WORKDIR)\rst-10-00-system-utils-functions.obj"
	@if exist "$(WORKDIR)\rst-10-00-system-utils-functions.lis"  \
            $(RM) "$(WORKDIR)\rst-10-00-system-utils-functions.lis"
	@if exist "$(WORKDIR)\rst-10-00-system-utils-functions.lst"  \
            $(RM) "$(WORKDIR)\rst-10-00-system-utils-functions.lst"
	@if exist "$(WORKDIR)\rst-10-01-rtc-functions.obj"  \
            $(RM) "$(WORKDIR)\rst-10-01-rtc-functions.obj"
	@if exist "$(WORKDIR)\rst-10-01-rtc-functions.lis"  \
            $(RM) "$(WORKDIR)\rst-10-01-rtc-functions.lis"
	@if exist "$(WORKDIR)\rst-10-01-rtc-functions.lst"  \
            $(RM) "$(WORKDIR)\rst-10-01-rtc-functions.lst"
	@if exist "$(WORKDIR)\rst-10-02-system-timer-functions.obj"  \
            $(RM) "$(WORKDIR)\rst-10-02-system-timer-functions.obj"
	@if exist "$(WORKDIR)\rst-10-02-system-timer-functions.lis"  \
            $(RM) "$(WORKDIR)\rst-10-02-system-timer-functions.lis"
	@if exist "$(WORKDIR)\rst-10-02-system-timer-functions.lst"  \
            $(RM) "$(WORKDIR)\rst-10-02-system-timer-functions.lst"
	@if exist "$(WORKDIR)\rst-10-03-uart-functions.obj"  \
            $(RM) "$(WORKDIR)\rst-10-03-uart-functions.obj"
	@if exist "$(WORKDIR)\rst-10-03-uart-functions.lis"  \
            $(RM) "$(WORKDIR)\rst-10-03-uart-functions.lis"
	@if exist "$(WORKDIR)\rst-10-03-uart-functions.lst"  \
            $(RM) "$(WORKDIR)\rst-10-03-uart-functions.lst"
	@if exist "$(WORKDIR)\rst-10-04-i2c-functions.obj"  \
            $(RM) "$(WORKDIR)\rst-10-04-i2c-functions.obj"
	@if exist "$(WORKDIR)\rst-10-04-i2c-functions.lis"  \
            $(RM) "$(WORKDIR)\rst-10-04-i2c-functions.lis"
	@if exist "$(WORKDIR)\rst-10-04-i2c-functions.lst"  \
            $(RM) "$(WORKDIR)\rst-10-04-i2c-functions.lst"
	@if exist "$(WORKDIR)\rst-10-07-rom-flashing-functions.obj"  \
            $(RM) "$(WORKDIR)\rst-10-07-rom-flashing-functions.obj"
	@if exist "$(WORKDIR)\rst-10-07-rom-flashing-functions.lis"  \
            $(RM) "$(WORKDIR)\rst-10-07-rom-flashing-functions.lis"
	@if exist "$(WORKDIR)\rst-10-07-rom-flashing-functions.lst"  \
            $(RM) "$(WORKDIR)\rst-10-07-rom-flashing-functions.lst"
	@if exist "$(WORKDIR)\rst-10-functions.obj"  \
            $(RM) "$(WORKDIR)\rst-10-functions.obj"
	@if exist "$(WORKDIR)\rst-10-functions.lis"  \
            $(RM) "$(WORKDIR)\rst-10-functions.lis"
	@if exist "$(WORKDIR)\rst-10-functions.lst"  \
            $(RM) "$(WORKDIR)\rst-10-functions.lst"
	@if exist "$(WORKDIR)\rst-18-delay.obj"  \
            $(RM) "$(WORKDIR)\rst-18-delay.obj"
	@if exist "$(WORKDIR)\rst-18-delay.lis"  \
            $(RM) "$(WORKDIR)\rst-18-delay.lis"
	@if exist "$(WORKDIR)\rst-18-delay.lst"  \
            $(RM) "$(WORKDIR)\rst-18-delay.lst"
	@if exist "$(WORKDIR)\system-vars.obj"  \
            $(RM) "$(WORKDIR)\system-vars.obj"
	@if exist "$(WORKDIR)\system-vars.lis"  \
            $(RM) "$(WORKDIR)\system-vars.lis"
	@if exist "$(WORKDIR)\system-vars.lst"  \
            $(RM) "$(WORKDIR)\system-vars.lst"
	@if exist "$(WORKDIR)\test.obj"  \
            $(RM) "$(WORKDIR)\test.obj"
	@if exist "$(WORKDIR)\test.lis"  \
            $(RM) "$(WORKDIR)\test.lis"
	@if exist "$(WORKDIR)\test.lst"  \
            $(RM) "$(WORKDIR)\test.lst"
	@if exist "$(WORKDIR)\uart-calculate.obj"  \
            $(RM) "$(WORKDIR)\uart-calculate.obj"
	@if exist "$(WORKDIR)\uart-calculate.lis"  \
            $(RM) "$(WORKDIR)\uart-calculate.lis"
	@if exist "$(WORKDIR)\uart-calculate.lst"  \
            $(RM) "$(WORKDIR)\uart-calculate.lst"
	@if exist "$(WORKDIR)\uart-calculate.src"  \
            $(RM) "$(WORKDIR)\uart-calculate.src"
	@if exist "$(WORKDIR)\uart-rx-buffer-add-to.obj"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-add-to.obj"
	@if exist "$(WORKDIR)\uart-rx-buffer-add-to.lis"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-add-to.lis"
	@if exist "$(WORKDIR)\uart-rx-buffer-add-to.lst"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-add-to.lst"
	@if exist "$(WORKDIR)\uart-rx-buffer-empty.obj"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-empty.obj"
	@if exist "$(WORKDIR)\uart-rx-buffer-empty.lis"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-empty.lis"
	@if exist "$(WORKDIR)\uart-rx-buffer-empty.lst"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-empty.lst"
	@if exist "$(WORKDIR)\uart-rx-buffer-full.obj"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-full.obj"
	@if exist "$(WORKDIR)\uart-rx-buffer-full.lis"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-full.lis"
	@if exist "$(WORKDIR)\uart-rx-buffer-full.lst"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-full.lst"
	@if exist "$(WORKDIR)\uart-rx-buffer-get-length.obj"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-get-length.obj"
	@if exist "$(WORKDIR)\uart-rx-buffer-get-length.lis"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-get-length.lis"
	@if exist "$(WORKDIR)\uart-rx-buffer-get-length.lst"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-get-length.lst"
	@if exist "$(WORKDIR)\uart-rx-buffer-get.obj"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-get.obj"
	@if exist "$(WORKDIR)\uart-rx-buffer-get.lis"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-get.lis"
	@if exist "$(WORKDIR)\uart-rx-buffer-get.lst"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-get.lst"
	@if exist "$(WORKDIR)\uart-rx-buffer-init.obj"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-init.obj"
	@if exist "$(WORKDIR)\uart-rx-buffer-init.lis"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-init.lis"
	@if exist "$(WORKDIR)\uart-rx-buffer-init.lst"  \
            $(RM) "$(WORKDIR)\uart-rx-buffer-init.lst"
	@if exist "$(WORKDIR)\uart-rx-variables.obj"  \
            $(RM) "$(WORKDIR)\uart-rx-variables.obj"
	@if exist "$(WORKDIR)\uart-rx-variables.lis"  \
            $(RM) "$(WORKDIR)\uart-rx-variables.lis"
	@if exist "$(WORKDIR)\uart-rx-variables.lst"  \
            $(RM) "$(WORKDIR)\uart-rx-variables.lst"
	@if exist "$(WORKDIR)\vectors16.obj"  \
            $(RM) "$(WORKDIR)\vectors16.obj"
	@if exist "$(WORKDIR)\vectors16.lis"  \
            $(RM) "$(WORKDIR)\vectors16.lis"
	@if exist "$(WORKDIR)\vectors16.lst"  \
            $(RM) "$(WORKDIR)\vectors16.lst"

# pre-4.11.0 compatibility
rebuildall: buildall 

LIBS = 

OBJS =  \
            $(WORKDIR_ESCSPACE)\build-date.obj  \
            $(WORKDIR_ESCSPACE)\clib.obj  \
            $(WORKDIR_ESCSPACE)\cpu-freq-calculator.obj  \
            $(WORKDIR_ESCSPACE)\cstartup.obj  \
            $(WORKDIR_ESCSPACE)\dual-firmware.obj  \
            $(WORKDIR_ESCSPACE)\i2c-calculate.obj  \
            $(WORKDIR_ESCSPACE)\init-clocks.obj  \
            $(WORKDIR_ESCSPACE)\init-f92.obj  \
            $(WORKDIR_ESCSPACE)\main.obj  \
            $(WORKDIR_ESCSPACE)\program-info-page-shim.obj  \
            $(WORKDIR_ESCSPACE)\program-info-page.obj  \
            $(WORKDIR_ESCSPACE)\rom-flashing-calculator.obj  \
            $(WORKDIR_ESCSPACE)\rom-flashing.obj  \
            $(WORKDIR_ESCSPACE)\rst-08-io.obj  \
            $(WORKDIR_ESCSPACE)\rst-10-00-system-utils-functions.obj  \
            $(WORKDIR_ESCSPACE)\rst-10-01-rtc-functions.obj  \
            $(WORKDIR_ESCSPACE)\rst-10-02-system-timer-functions.obj  \
            $(WORKDIR_ESCSPACE)\rst-10-03-uart-functions.obj  \
            $(WORKDIR_ESCSPACE)\rst-10-04-i2c-functions.obj  \
            $(WORKDIR_ESCSPACE)\rst-10-07-rom-flashing-functions.obj  \
            $(WORKDIR_ESCSPACE)\rst-10-functions.obj  \
            $(WORKDIR_ESCSPACE)\rst-18-delay.obj  \
            $(WORKDIR_ESCSPACE)\system-vars.obj  \
            $(WORKDIR_ESCSPACE)\test.obj  \
            $(WORKDIR_ESCSPACE)\uart-calculate.obj  \
            $(WORKDIR_ESCSPACE)\uart-rx-buffer-add-to.obj  \
            $(WORKDIR_ESCSPACE)\uart-rx-buffer-empty.obj  \
            $(WORKDIR_ESCSPACE)\uart-rx-buffer-full.obj  \
            $(WORKDIR_ESCSPACE)\uart-rx-buffer-get-length.obj  \
            $(WORKDIR_ESCSPACE)\uart-rx-buffer-get.obj  \
            $(WORKDIR_ESCSPACE)\uart-rx-buffer-init.obj  \
            $(WORKDIR_ESCSPACE)\uart-rx-variables.obj  \
            $(WORKDIR_ESCSPACE)\vectors16.obj

rc2014-firmware: $(OBJS)
	 $(LD) $(LDFLAGS)

$(WORKDIR_ESCSPACE)\build-date.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\build-date.c  \
            $(INCLUDE_ESCSPACE)\std\String.h  \
            $(PRJDIR_ESCSPACE)\src\includes\stdint.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\src\rst-10-drivers\build-date.c"

$(WORKDIR_ESCSPACE)\clib.obj :  \
            $(PRJDIR_ESCSPACE)\src\clib.c  \
            $(INCLUDE_ESCSPACE)\zilog\cio.h  \
            $(INCLUDE_ESCSPACE)\zilog\defines.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80190.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F91.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F92.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F93.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80L92.h  \
            $(INCLUDE_ESCSPACE)\zilog\ez80.h  \
            $(INCLUDE_ESCSPACE)\zilog\gpio.h  \
            $(INCLUDE_ESCSPACE)\zilog\uart.h  \
            $(INCLUDE_ESCSPACE)\zilog\uartdefs.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\src\clib.c"

$(WORKDIR_ESCSPACE)\cpu-freq-calculator.obj :  \
            $(PRJDIR_ESCSPACE)\src\startup\cpu-freq-calculator.c  \
            $(PRJDIR_ESCSPACE)\src\includes\stdint.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\src\startup\cpu-freq-calculator.c"

$(WORKDIR_ESCSPACE)\cstartup.obj :  \
            $(PRJDIR_ESCSPACE)\src\startup\cstartup.asm
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\startup\cstartup.asm"

$(WORKDIR_ESCSPACE)\dual-firmware.obj :  \
            $(PRJDIR_ESCSPACE)\src\startup\dual-firmware.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\startup\dual-firmware.s"

$(WORKDIR_ESCSPACE)\i2c-calculate.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\i2c\i2c-calculate.c  \
            $(INCLUDE_ESCSPACE)\std\Stdlib.h  \
            $(PRJDIR_ESCSPACE)\src\includes\stdint.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\src\rst-10-drivers\i2c\i2c-calculate.c"

$(WORKDIR_ESCSPACE)\init-clocks.obj :  \
            $(PRJDIR_ESCSPACE)\src\startup\init-clocks.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\startup\init-clocks.s"

$(WORKDIR_ESCSPACE)\init-f92.obj :  \
            $(PRJDIR_ESCSPACE)\src\startup\init-f92.asm  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\startup\init-f92.asm"

$(WORKDIR_ESCSPACE)\main.obj :  \
            $(PRJDIR_ESCSPACE)\src\main.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\main.s"

$(WORKDIR_ESCSPACE)\program-info-page-shim.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\rom-flashing\program-info-page-shim.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rst-10-drivers\rom-flashing\program-info-page-shim.s"

$(WORKDIR_ESCSPACE)\program-info-page.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\rom-flashing\program-info-page.c  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F92.h  \
            $(PRJDIR_ESCSPACE)\src\includes\critical-blocks.h  \
            $(PRJDIR_ESCSPACE)\src\includes\eZ80F92-extra.h  \
            $(PRJDIR_ESCSPACE)\src\includes\stdint.h  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\rom-flashing\rom-flashing.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\src\rst-10-drivers\rom-flashing\program-info-page.c"

$(WORKDIR_ESCSPACE)\rom-flashing-calculator.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\rom-flashing\rom-flashing-calculator.c  \
            $(INCLUDE_ESCSPACE)\std\Stdlib.h  \
            $(PRJDIR_ESCSPACE)\src\includes\stdint.h  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\rom-flashing\rom-flashing-calculator.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\src\rst-10-drivers\rom-flashing\rom-flashing-calculator.c"

$(WORKDIR_ESCSPACE)\rom-flashing.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\rom-flashing\rom-flashing.c  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F92.h  \
            $(PRJDIR_ESCSPACE)\src\includes\critical-blocks.h  \
            $(PRJDIR_ESCSPACE)\src\includes\eZ80F92-extra.h  \
            $(PRJDIR_ESCSPACE)\src\includes\stdint.h  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\rom-flashing\rom-flashing-calculator.h  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\rom-flashing\rom-flashing.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\src\rst-10-drivers\rom-flashing\rom-flashing.c"

$(WORKDIR_ESCSPACE)\rst-08-io.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-08-io.s
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rst-08-io.s"

$(WORKDIR_ESCSPACE)\rst-10-00-system-utils-functions.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\rst-10-00-system-utils-functions.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rst-10-drivers\rst-10-00-system-utils-functions.s"

$(WORKDIR_ESCSPACE)\rst-10-01-rtc-functions.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\rst-10-01-rtc-functions.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rst-10-drivers\rst-10-01-rtc-functions.s"

$(WORKDIR_ESCSPACE)\rst-10-02-system-timer-functions.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\rst-10-02-system-timer-functions.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rst-10-drivers\rst-10-02-system-timer-functions.s"

$(WORKDIR_ESCSPACE)\rst-10-03-uart-functions.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\rst-10-03-uart-functions.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rst-10-drivers\rst-10-03-uart-functions.s"

$(WORKDIR_ESCSPACE)\rst-10-04-i2c-functions.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\rst-10-04-i2c-functions.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\i2c\i2c-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rst-10-drivers\rst-10-04-i2c-functions.s"

$(WORKDIR_ESCSPACE)\rst-10-07-rom-flashing-functions.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\rst-10-07-rom-flashing-functions.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rst-10-drivers\rst-10-07-rom-flashing-functions.s"

$(WORKDIR_ESCSPACE)\rst-10-functions.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-functions.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rst-10-functions.s"

$(WORKDIR_ESCSPACE)\rst-18-delay.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-18-delay.s
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rst-18-delay.s"

$(WORKDIR_ESCSPACE)\system-vars.obj :  \
            $(PRJDIR_ESCSPACE)\src\startup\system-vars.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\startup\system-vars.s"

$(WORKDIR_ESCSPACE)\test.obj :  \
            $(PRJDIR_ESCSPACE)\src\test.s  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\test.s"

$(WORKDIR_ESCSPACE)\uart-calculate.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\uart-rx-buffer\uart-calculate.c  \
            $(PRJDIR_ESCSPACE)\src\includes\stdint.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\src\rst-10-drivers\uart-rx-buffer\uart-calculate.c"

$(WORKDIR_ESCSPACE)\uart-rx-buffer-add-to.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\uart-rx-buffer\uart-rx-buffer-add-to.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rst-10-drivers\uart-rx-buffer\uart-rx-buffer-add-to.s"

$(WORKDIR_ESCSPACE)\uart-rx-buffer-empty.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\uart-rx-buffer\uart-rx-buffer-empty.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rst-10-drivers\uart-rx-buffer\uart-rx-buffer-empty.s"

$(WORKDIR_ESCSPACE)\uart-rx-buffer-full.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\uart-rx-buffer\uart-rx-buffer-full.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rst-10-drivers\uart-rx-buffer\uart-rx-buffer-full.s"

$(WORKDIR_ESCSPACE)\uart-rx-buffer-get-length.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\uart-rx-buffer\uart-rx-buffer-get-length.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rst-10-drivers\uart-rx-buffer\uart-rx-buffer-get-length.s"

$(WORKDIR_ESCSPACE)\uart-rx-buffer-get.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\uart-rx-buffer\uart-rx-buffer-get.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rst-10-drivers\uart-rx-buffer\uart-rx-buffer-get.s"

$(WORKDIR_ESCSPACE)\uart-rx-buffer-init.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\uart-rx-buffer\uart-rx-buffer-init.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rst-10-drivers\uart-rx-buffer\uart-rx-buffer-init.s"

$(WORKDIR_ESCSPACE)\uart-rx-variables.obj :  \
            $(PRJDIR_ESCSPACE)\src\rst-10-drivers\uart-rx-buffer\uart-rx-variables.s  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rst-10-drivers\uart-rx-buffer\uart-rx-variables.s"

$(WORKDIR_ESCSPACE)\vectors16.obj :  \
            $(PRJDIR_ESCSPACE)\src\startup\vectors16.asm  \
            $(PRJDIR_ESCSPACE)\src\config.inc  \
            $(PRJDIR_ESCSPACE)\src\romwbw.inc  \
            $(PRJDIR_ESCSPACE)\src\rst-10-constants.inc  \
            $(PRJDIR_ESCSPACE)\src\startup\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\startup\vectors16.asm"

