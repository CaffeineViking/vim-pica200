" Language: Nintendo 3DS PICA200 GPU Vertex Shader Assembler
" Maintainers: Erik S. V. Jansson <caffeineviking@gmail.com>

if exists("b:current_syntax")
    finish
endif

syn case ignore

syn keyword picaTodo contained TODO
syn match picaComment ";.*" contains=picaTodo
syn match picaNumber "\<[-+]\?[0-9]\+\(\.[0-9]\+\)\?\>"
syn match picaLabel "^\s*[a-z_$][a-z0-9_$]*:"he=e-1

syn match picaOperator "\.[xyzw]\{1,4}\>"

syn keyword picaRegister  o0  o1  o2  o3  o4  o5  o6  o7  o8  o9 o10 o11 o12 o13 o14 o15
syn keyword picaRegister  v0  v1  v2  v3  v4  v5  v6  v7  v8  v9 v10 v11 v12 v13 v14 v15
syn keyword picaRegister  r0  r1  r2  r3  r4  r5  r6  r7  r8  r9 r10 r11 r12 r13 r14 r15
syn keyword picaRegister  c0  c1  c2  c3  c4  c5  c6  c7  c8  c9 c10 c11 c12 c13 c14 c15
syn keyword picaRegister c16 c17 c18 c19 c20 c21 c22 c23 c24 c25 c26 c27 c28 c29 c30 c31
syn keyword picaRegister c32 c33 c34 c35 c36 c37 c38 c39 c40 c41 c42 c43 c44 c45 c46 c47
syn keyword picaRegister c48 c49 c50 c51 c52 c53 c54 c55 c56 c57 c58 c59 c60 c61 c62 c63
syn keyword picaRegister c64 c65 c66 c67 c68 c69 c70 c71 c72 c73 c74 c75 c76 c77 c78 c79
syn keyword picaRegister c80 c81 c82 c83 c84 c85 c86 c87 c88 c89 c90 c91 c92 c93 c94 c95
syn keyword picaRegister  i0  i1  i2  i3
syn keyword picaRegister  b0  b1  b2  b3  b4  b5  b6  b7  b8  b9 b10 b11 b12 b13 b14 b15

syn match picaDirective "\.proc\>"
syn match picaDirective "\.else\>"
syn match picaDirective "\.end\>"
syn match picaDirective "\.alias\>"
syn match picaDirective "\.fvec\>"
syn match picaDirective "\.ivec\>"
syn match picaDirective "\.bool\>"
syn match picaDirective "\.constf\>"
syn match picaDirective "\.consti\>"
syn match picaDirective "\.constfa\>"
syn match picaDirective "\.in\>"
syn match picaDirective "\.out\>"
syn match picaDirective "\.entry\>"
syn match picaDirective "\.nodvle\>"
syn match picaDirective "\.gsh\>"
syn match picaDirective "\.setf\>"
syn match picaDirective "\.seti\>"
syn match picaDirective "\.setb\>"

syn keyword picaInstruction nop
syn keyword picaInstruction end
syn keyword picaInstruction emit
syn keyword picaInstruction setemit
syn keyword picaInstruction add
syn keyword picaInstruction dp3
syn keyword picaInstruction dp4
syn keyword picaInstruction dph
syn keyword picaInstruction dst
syn keyword picaInstruction mul
syn keyword picaInstruction sge
syn keyword picaInstruction slt
syn keyword picaInstruction max
syn keyword picaInstruction min
syn keyword picaInstruction ex2
syn keyword picaInstruction lg2
syn keyword picaInstruction litp
syn keyword picaInstruction flr
syn keyword picaInstruction rcp
syn keyword picaInstruction rsq
syn keyword picaInstruction mov
syn keyword picaInstruction mova
syn keyword picaInstruction cmp
syn keyword picaInstruction call
syn keyword picaInstruction for
syn keyword picaInstruction break
syn keyword picaInstruction breakc
syn keyword picaInstruction callc
syn keyword picaInstruction ifc
syn keyword picaInstruction jmpc
syn keyword picaInstruction callu
syn keyword picaInstruction ifu
syn keyword picaInstruction jmpu
syn keyword picaInstruction mad

hi def link picaTodo        Todo
hi def link picaComment     Comment
hi def link picaNumber      Number
hi def link picaLabel       Label

hi def link picaOperator    Identifier
hi def link picaRegister    Type
hi def link picaDirective   PreProc
hi def link picaInstruction Keyword

syn case match

let b:current_syntax = "pica200"
