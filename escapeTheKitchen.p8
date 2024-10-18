pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
#include escapeTheKitchen.lua
__gfx__
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccccccbbbbccccccccccccccccccccccccccccbbbbcccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccb4334bcccccccccccbbbbcccccccccccb4334bc33ccccccccbbbbccccccccccccccccccccccccccc4c4c4c4ccccccccccccccccccccccccc4c4c4c4cccc
cccccb3bb3bc33cccccccb4334bcccccccc3cb3bb3b343cccccccb4334bccccccccccbbbbbbcccccccc33bbbbbb333ccccccc4c4c4c4ccccccc33bbbbbb333cc
ccccb433334b343ccccccb3bb3b33cccccc3b433334b33cccccccb3bb3b33cccccccb343343b333cccccb433334b43ccccc33bbbbbb333ccccccb433334b43cc
cc333bbbbbb3333cccccb433334b43ccccc33bbbbbb33cccccccb433334b43cccc33b333333baa3ccccccb3bb3b33cccccccb433334b43cccccccb3bb3b33ccc
cccc33333333ccccccc33bbbbbb333cccccc33333333ccccccc33bbbbbb333ccccccb343343b333ccccccb4334bccccccccccb4bb4b33ccccccccb4334bccccc
ccccc4c4c4c4ccccccccc4c4c4c4ccccccccc4c4c4c4ccccccccc4c4c4c4cccccccccbbbbbbcccccccccccbbbbcccccccccccbbbbbbcccccccccccbbbbcccccc
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccdffdddddddddd77d
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccdfddddddddddd77d
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccddfdddddddddd77d
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccdfddddddddddd77d
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccdfddddddddddd77d
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccddfdddddddddd77d
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccdddfddddddddd77d
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccddddddddddddd77d
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccdfddddddddddd77d
ccccccbbbbccccccccccccbbbbccccccccccccbbbbccccccccccccbbbbccccccccccccbbbbccccccccccccbbbbccccccccccccbbbbccccccdfddddddddddd77d
cccccb4334bccccccccccb4334bccccccccccb4334bccccccccccb4334bccccccccccb4334bccccccccccb4334bccccccccccb4334bcccccdffdddddddddd77d
cccccb3bb3bc33cccccccb3bb3bc33cccccccb3bb3bc33cccccccb3bb3bc33cccccccb3bb3bc33cccccccb3bb3bc33cccccccb3bb3bc33ccddddddddddddd77d
ccccb433334b343cccccb433334b343cccccb433334b343cccccb433334b343cccccb433334b343cccccb433334b343cccccb433334b343cdddfddddddddd77d
cc333bbbbbb3333ccc333bbbbbb3333ccc333bbbbbb3333ccc333bbbbbb3333ccc333bbbbbb3333ccc333bbbbbb3333ccc333bbbbbb3333cddfdddddddddd77d
cccc333333334cccccc433333333cccccccc33333333cccccccc333333334cccccc433333333cccccccc33333333cccccccc33333333ccccddfdddddddddd77d
ccccc4ccc4cccccccccccc4ccc44cccccccccc44c4c4ccccccccc4c4c4cccccccccccc4cc44cccccccccc44cc4c4ccccccccc4c4c4c4ccccddfdddddddddd77d
ddddddddddddd77dddddddddddddddddddddddddcccccccc00777700070007000030700300000000000000000000000000000000000000000000000000000000
ddddddddddddd77ddddddddddddddddd77777777cccccccc076e6670300770030703030600000000000000000000000000000000000000000000000000000000
ddddddddddddd77ddddddddddddddddd77777777cccccccc7636a667007667000700077000000000000000000000000000000000000000000000000000000000
ddddddddddddd77dddddddddddddddddddddddddcccccccc7668a36707e6637076370a0000000000000000000000000000000000000000000000000000000000
ddddddddddddd77dddddddddddddddddddddddddcccccccc7e3886677663a6670070767600000000000000000bb40000bb400000000000000000000000000000
ddddddddddddd77dddddd777777dddddddddddddcccccccc763366677638aa673768a60000000000000000000bb440000b00000000004440b030440000000000
ddddddddddddd77dddddd777777dddddddddddddcccccccc076636700768837007688630000000000000000000bb44004b000000000000400004000000000000
ddddddddddddd77dddddd77dd77dddddddddddddcccccccc007777000077870000777700cccccc4cbcccccc3cccbc444bbccccc300bbb0400440030000000000
ddddddddd77dddddddddd77dd77ddddd0000000000000000000000000000000000000000ccccbcccc4c3cccc4444bcc4cbc4cc4c0000b0300000000000000000
ddddddddd77dddddddddd777777ddddd0000000000000000000000000000000000000000cc4c3c3333cc3ccccc4cbbb3bb4c444c000000403000b00000000000
ddddddddd77dddddddddd777777ddddd0000000000000000000000000000000000000000cccbc343343c334ccccbc34bb434434c000040000030000000000000
ddddddddd77ddddddddddddddddddddd0000000000000000000000000000000000000000ccc4c33bb3bc333ccbbbb3bbb3bb333c000000040000400000000000
ddddddddd77ddddddddddddddddddddd0000000000000000000000000000000000000000c3cc34333344343cc4443bb3334b343c000b04400000000000000000
77777777d77ddddddddddddddddddddd0000000000000000000000000000000000000000cc333bbbbbb3333ccc333b44bb4bb33c00000400b000000000000000
77777777d77ddddddddddddddddddddd0000000000000000000000000000000000000000ccc43333333333cc333444433333b4cc000000000000000000000000
ddddddddd77ddddddddddddddddddddd0000000000000000000000000000000000000000cc4cc4c4c4333ccc3c4444c4c43bbc4c000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000aaaaaaaaaa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00a00a9aa9a00a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00a00a9aa9a00a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00a00a9aa9a00a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00a00a9aa9a00a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00a00a9aa9a00a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000a0a9aa9a0a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000aaa99aaa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000aa99aa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000a99a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000a99a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000aa99aa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000aa9aa9aa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000aa9aaaa9aa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
14000000000000000000000000000000000000000000000000000000000000150000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000044444444444444444400000000000000140000001400000000001400000000000000000000000000000000000000000000000000
14444444444444444444444444444444444444444415444444444444444444150000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000004444444400000000140000001400000000001400000000000000000000000000000000000000000000000000
14000000000000000000000015000000000000000015000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000004444440000140000001400000000001400000000000000000000000000000000000000000000000000
14000000000000000000000015000000000000000015000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000444444444444441444444444441444444444444444444400000000000000000000000000000000
14000000000000000000000015000000000000000015000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000044444444444400004400001500000000
14000000000000001500000015000000150000000015000000001544444444444444444444444444444444444444444444440000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001544000000
14000000000000001500000000000000150000000000000000001500000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004400
14000000000000001500000000000000150000000000000000001500000000000000000000000000000000000000000000000000004444440000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
14000000050505050505050505050505050505050505050505050505050505050505050505050505150000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000044444444440000
14000044000000000000000000000000000000000000000000000000000000000000000000000000150000000000444444444400000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
14000000000000000000000000000000000000000000000000000000000000000000000000000000150000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000044444400000000000000000000
14000000000000000000000014000000000000140000000000000000000000000000000000000000150000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
14440000000014000000000014000000000000140000000000000000000000000000000000000000150000000000000000000044444444000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
14044400000014000000000014000000000000140000000000000000000000000000000000000000150000444444440000000000000000000000000044444400
00004444444444440000004444440000000000444444444444000000444444000000004444440000000000444444440000000000004444440000000000000000
14050505050505050505050505050505050505050505050505050505050000000000000000000000150000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000044444400000000150000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004444440000
00000000000000000000000000000000000000000000000000000000000000000000000000000000150000000044444444000000000000000000000000000000
00000000000000000000000000000044444400000000000000000000000000000000000000000044444400000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000150000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000444444444400000000150000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000444444000000004444440000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000150000000000000000000044444444440000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000150000004444444400000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000150000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000444444444400000000000000000000150000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000150000000000444444440000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000444444444400000000004444444444440000000000000000000000000000000000150000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000040404040400000000000404040404040000000000000000000000000000000000150000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000040404040400000000000404040404040000000000000000000000000000000000150000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
44444444444444440444044444440044444404444404444444000000000044444444444444444444444444444444444444444444444444444444444444000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
04040404040404040404040404140015040404040404040414000000000015040404040404040404040404040404040404040404040404040404040404000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
04040404040404040404040404140015040404040404040414000004000015040404040404040404040404040404040404040404040404040404040404000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
04040404040404040404040404140015040404040404040414000000000015040404040404040404040404040404040404040404040404040404040404000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
04040404040404040404040404040004040404040404040404000000000004040404040404040404040404040404040404040404040404040404040404000000
__gff__
0000000083a30000000000000000000000000000e3c300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004040400000000000000000404040404040404040000000000000000000000000000040404040
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4150505050505050505050500000000000000050505050505050505050505051000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4100000000000000000000000000000000000000000000000000000000000051000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4100000000000000000000000000000000000000000000000000000000000051000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4100000000000000000000000000000000000000000000000000000000000051444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4100000000000000000000000000000000000000000000000000000000000051000000000000000000000000444444444444444400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4144444444440000000000000000444444000000000000000000000000000051444444444400000000004444440000000000004444444444440000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4100000000000000000000000000000000000000000000000000000000000051000000000000000000004400000000000000000000000000444444444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4100000000004444444444000000000000000044444444440000000000000051505050505050505050500000000000000000000000000000000000000000444444440000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4100000000000000000000000000000000000000000000000000000000000051000000000000000000000000000000000000000000000000000000000000000000444444440000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4100000000000000000000000000000000000000000000000000444444000051000000000000000000000000000000000000000000000000000000000000000000000000444444444400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4100000000000000000000000000000000000000000000000000000000000051000000000000000000000000000000000000000000000000000000000000000000000000000000004444444400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
0101000023050000000000000000000000000000000000000504023050110502205021050000002a050180502b05000000000002d050000000000000000000000000000000000000000000000000000000000000
0510090133030270302a0302c0302d0302d0302e0302e03033030270302a0302d0302e0302e030270302a030280302b0302d0302d0302b0302e0302c0302f0303203033030310303303032030320303204032040
0110000033030270302a0302c0302d0302d0302e0302e03033030270302a0302d0302e0302e030270302a030280302b0302d0302d0302b0302e0302c0302f0303203033030310303303032030320303204032040
011000200603019030070300303027030250302103020030000000000000000000000000000000000000000006030190300703003030270302503021030200300000000000000000000000000000000000000000
011000000603006730067300673006730067300673006730067300673006730067300673006730067300555006730067300673006730067300673006730067300673006730067300673006730067300673006730
001000001e0501e050000000000000000000001e050000001e050000001e05000000010500e050090500905009050090500000009050090500905009050170501305009050090500905009050090500905000000
001000002405024050000002405024050000002905029050000002905029050010002d0502d050000002d0502d050000003005030050300503005030050300500000035050350503505035050350503505035050
0010000010050100500000010050100501600015050150500000015050150500000019050190500000019050190501f0001f0501f0501f0501f0501f0501f050000002d0502d0502d0502d0502d0502d0502d050
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000003301433014330143101431014310140000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__music__
00 32424344
01 41420304
00 41050304
00 41420304
02 41050304
04 41420607
04 41420304
