@echo off
rem node freq.js > freq.lm

set compiler=ca65
set timestamp=_2020_07_28
set iname=piano

set optsiel=KBD_SIEL
set name=piano%timestamp%
call c.bat

set optsiel=KBD_SIEL,DEBUG
set name=piano_DEBUG%timestamp%
call c.bat

set optsiel=KBD_EMU
set name=piano_EMU%timestamp%
call c.bat

set optsiel=KBD_EMU,DEBUG
set name=piano_EMU_DEBUG%timestamp%
call c.bat



