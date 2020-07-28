if %compiler%==dasm call asmproc -i %iname%.lm -o %iname%.asm --target dasm -d %optsiel%,TARGET_DASM
if %compiler%==dasm dasm %iname%.asm -l%iname%.lst -o%name%.prg

if %compiler%==ca65 call asmproc -i %iname%.lm -o %iname%.asm --target ca65 -d %optsiel%,TARGET_CA65
if %compiler%==ca65 cl65 -l %iname%.lst --config c64-asm.cfg %iname%.asm -o %name%.prg


