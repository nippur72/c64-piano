@echo off
rem node freq.js > freq.lm

set name=piano
set compiler=dasm

rem compila per tastiera siel o per tastiera emulata
rem set optsiel=KBD_SIEL
set optsiel=KBD_EMULATED

if %compiler%==dasm call asmproc -i %name%.lm -o %name%.asm --target dasm -d %optsiel%,TARGET_DASM
if %compiler%==dasm dasm %name%.asm -o%name%.prg -l%name%.lst

if %compiler%==ca65 call asmproc -i %name%.lm -o %name%.asm --target ca65 -d %optsiel%,TARGET_CA65
if %compiler%==ca65 cl65 --config c64-asm.cfg %name%.asm -o %name%.prg


