@echo off
rem node freq.js > freq.lm

set name=piano
set compiler=ca65

rem compila per tastiera siel
rem set optsiel=-d KBD_SIEL

if %compiler%==dasm call asmproc -i %name%.lm -o %name%.asm --target dasm -d TARGET_DASM %optsiel%
if %compiler%==dasm dasm %name%.asm -o%name%.prg -l%name%.lst

if %compiler%==ca65 call asmproc -i %name%.lm -o %name%.asm --target ca65 -d TARGET_CA65 %optsiel%
if %compiler%==ca65 cl65 --config c64-asm.cfg %name%.asm -o %name%.prg


