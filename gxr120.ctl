cpu 6502
load $8000 gxr120.orig
save gxr120.asm
symbols gxr120.sym
newsym z.sym ; TODO: get rid of this

; ROM header
string $8000 3 ; vanity text in language entry
entry $8003 ; service entry
byte $8006 ; rom type
byte pc ; copyright offset
byte pc ; binary version
stringz pc ; title
stringz pc ; copyright

stringz $81e0
entry pc
;stringz $81f5
;entry pc
newpc $81f5
repeat 18
    stringz pc
endrepeat
wordentry pc 14

byte $8368
string $8369 $17
entry pc

byte $8393
string $8394 $09
entry pc

byte $83a3
string $83a4 $10
entry pc

byte $83bf
string $83c0 $03
entry pc

byte $83c9
string $83ca $02

hexdump output.hex