" HP50G.vim - Hp 50g
" Maintainer: Ivan Lopes

if exists("b:current_syntax")
    finish
endif

" Match language specific keywords

syntax keyword HP50GDocs HELP CASCMD

"syntax keyword HP50GFunction
syntax match   HP50GFunction "ARRY"
syntax match   HP50GFunction "STO[*-+]"
syntax match   HP50GFunction "OBJ"
syntax match   HP50GFunction "COL[+-]"
syntax match   HP50GFunction "ROW[+-]"
syntax match   HP50GFunction "LIST"
syntax match   HP50GFunction "SIN"
syntax match   HP50GFunction "COS"
syntax match   HP50GFunction "TAN"
syntax match   HP50GFunction "ASIN"
syntax match   HP50GFunction "ACOS"
syntax match   HP50GFunction "ATAN"
syntax match   HP50GFunction "EXP"
syntax match   HP50GFunction "DAT"

syntax keyword  HP50GMyFunction varON inMat toInteger conmatrix diagmatrix get geti IIInt IInt jLcmatrix
syntax keyword  HP50GMyFunction LoadCST jLrmatrix matrix nInt put puti rdmmatrix
syntax keyword  HP50GMyFunction func derivadafx vector toFloat setf usetf replacematrix rndmatrix submatrix vander
syntax keyword  HP50GMyFunction showformula NEWTON coord conf IVAN inMatrref inMatSol integralfx
" Statement
syntax match   HP50GStatement "\vFC\?"
syntax match   HP50GStatement "\vFC\?C"
syntax match   HP50GStatement "\vFS\?"
syntax match   HP50GStatement "\vFS\?C"
syntax match   HP50GStatement "\vPIX\?"
syntax match   HP50GStatement "\v\\-\>Q"
syntax match   HP50GStatement "\v\\-\>Q\\pi"
syntax match   HP50GStatement "\v\\-\>V2"
syntax match   HP50GStatement "\v\\-\>V3"

syntax match   HP50GStatement "LNCOLLECT"
syntax match   HP50GStatement "RESTORE"
syntax match   HP50GStatement "ISPRIME\?"
syntax match   HP50GStatement "HISTOGRAM"
syntax match   HP50GStatement "TCOLLECT"
syntax match   HP50GStatement "TRIGSIN"
syntax match   HP50GStatement "HALFTAN"
syntax match   HP50GStatement "TEXPAND"

syn region HP50gString start=+"+ end=+"+
syn region HP50gString start=+'+ end=+'+
syntax keyword HP50GStatement TAG DAT STO ROW COL INV GROB KEYEVAL SCROLL ABCUV ABS ACK ACKALL ACOS2S ACOSH ADD ADDTMOD
syntax keyword HP50GStatement AMORT XQ AND ANIMATE APEEK APPLY ARC ARCHIVE ARG HOME CLEAR DIR
syntax keyword HP50GStatement ASIN2C ASIN2T ASINH ASM ASN ASR ATAN2S ATANH ATICK
syntax keyword HP50GStatement AUGMENT AUTO AXES MAP AXL AXM AXQ BAR BARPLOT BASIS
syntax keyword HP50GStatement BEEP BESTFIT BetaTesting BIN BINS BLANK BOX BYTES
syntax keyword HP50GStatement C2P CEIL CENTR CF CHINREM CHOLESKY CHR CIRC
syntax keyword HP50GStatement CLKADJ CLLCD CNRM COLCT COLLECT COMB CON COND
syntax keyword HP50GStatement CONIC CONJ CONLIB CONST CORR COSH COV CRC CRDIR
syntax keyword HP50GStatement CRLIB CROSS CST CSWP CURL CYCLOTOMIC CYLIN DARCY
syntax keyword HP50GStatement DATE DDAYS DEC DECR DEFINE DEG DIAG DELALARM DELKEYS
syntax keyword HP50GStatement DEPND DEPTH DERIV DERVX DESOLVE DET DIAGMAP DIFFEQ
syntax keyword HP50GStatement DISP DISTRIB DIV DIV2 DIV2MOD DIVIS DIVMOD DIVPC
syntax keyword HP50GStatement DOLIST DOSUBS DOT DRAW DRAX DROP DROP2 DROPN DTAG
syntax keyword HP50GStatement DUP DUP2 DUPDUP DUPN EGCD EGV EGVL ENDSUB ENG EQ
syntax keyword HP50GStatement EQNLIB ER ERASE EULER EXP2POW EXPAN EXPAND
syntax keyword HP50GStatement EXPANDMOD EXPFIT EXPLN EXPM EYEPT FACTOR FACTORMOD
syntax keyword HP50GStatement FACTORS FANNING FCOEF FDISTRIB FFT FINDALARM FIX
syntax keyword HP50GStatement FLOOR FOURIER FP FREEZE FROOTS FUNCTION GAMMA
syntax keyword HP50GStatement GAUSS GCD GCDMOD GET GETI gmol GOR GRAD
syntax keyword HP50GStatement GRAMSCHMIDT GRIDMAP GROBADD GXOR HADAMARD HALFTAN
syntax keyword HP50GStatement HEAD HERMITE HESS HEX HILBERT HISTOGRAM HISTPLOT
syntax keyword HP50GStatement HORNER IBASIS IBERNOULLI IBP ICHINREM IDIV2 IDN
syntax keyword HP50GStatement IEGCD IFFT ILAP IM IMAGE INCR INDEP
syntax keyword HP50GStatement INTVX INVMOD IP IQUOT IREMAINDER ISOL ISOM JORDAN
syntax keyword HP50GStatement KER KEY LABEL LAGRANGE LAP LAPL lbmol LCM LDEC
syntax keyword HP50GStatement LEGENDRE LGCD lim LIN LINE LINFIT LININ LINSOLVE
syntax keyword HP50GStatement LNP1 LOGFIT LQ LR LSQ LU MAD MAKESTR MANT MAX
syntax keyword HP50GStatement MCALC MEAN MEM MENU MIN MINEHUNT MINIT MITM MKISOM
syntax keyword HP50GStatement MOD MODSTO MROOT MSGBOX MSOLVR MULTMOD MUSER NDIST
syntax keyword HP50GStatement NDUPN NEG NEWOB NEXTPRIME NIP NOT NOVAL NSUB NUM
syntax keyword HP50GStatement NUMX NUMY OCT OR ORDER OVER P2C PA2B2 PARAMETRIC
syntax keyword HP50GStatement PARSURFACE PARTFRAC PATH PCAR PCOEF PCONTOUR PCOV
syntax keyword HP50GStatement PDIM PEEK PEEKARM PERM PEVAL PGDIR PICK PICK3 PICT
syntax keyword HP50GStatement PIXOFF PIXON PLOT PLOTADD PMINI POKE POKEARM POLAR
syntax keyword HP50GStatement POS POWEXPAND POWMOD PPAR PREDX PREDY PREVAL
syntax keyword HP50GStatement PREVPRIME PROMPT PROOT PROPFRAC Psi PSI PURGE PUT
syntax keyword HP50GStatement PUTI PVAR PVIEW PWRFIT qr QR QUAD QUOT QUOTE QXA
syntax keyword HP50GStatement RAD RAND RANK RANM RCI RCIJ RCL RCLALARM RCLF
syntax keyword HP50GStatement RCLKEYS RCLMENU RCWS RDM RDZ RE RECT REF REPL RES
syntax keyword HP50GStatement RESTORE RESULTANT REVLIST RISCH RKF RKFERR RKFSTEP
syntax keyword HP50GStatement RL RLB RND RNRM ROLL ROLLD ROOT ROT rpm RR RRB
syntax keyword HP50GStatement rref RREF RRK RRKSTEP RSBERR RSD RSWP SAME SCALE
syntax keyword HP50GStatement RCLVX SCALEH SCALEW SCATRPLOT SCATTER SCHUR SCI SCONJ
syntax keyword HP50GStatement SDEV SEQ SERIAL SERIES SF SHOW SIDENS SIGMA
syntax keyword HP50GStatement SIGMAVX SIGN SIGNTAB SIMP2 SIMPLIFY SINCOS SINH
syntax keyword HP50GStatement SINV SIZE SL SLB SLOPEFIELD SNEG SNRM SOLVE
syntax keyword HP50GStatement SOLVEQN SOLVEVX SORT SPHERE SR SRAD SRB SREPL SREV
syntax keyword HP50GStatement STD STOALARM STOF STOKEYS STREAM STURM STURMAB
syntax keyword HP50GStatement STWS SUB SUBST SUBTMOD SVD SVL SWAP SYLVESTER
syntax keyword HP50GStatement SYST2MAT TABVAL TABVAR TAIL TAN2SC TAN2SC2 TANH
syntax keyword HP50GStatement TAYLOR0 TAYLR TCOLLECT TDELTA TEXPAND TEXT TICKS
syntax keyword HP50GStatement TIME TLIN TLINE TMENU TOT TRACE TRAN TRIG TRIGCOS
syntax keyword HP50GStatement TRIGSIN TRIGTAN TRN TRNC TRUTH TSIMP TSTR TVARS
syntax keyword HP50GStatement TVMROOT TYPE UNPICK UNROT UTPC UTPF UTPN UTPT
syntax keyword HP50GStatement VANDERMONDE VAR VARS VPAR VTYPE WAIT WIREFRAME
syntax keyword HP50GStatement XCOL XLIB XOR XPON XRNG XVOL XXRNG YCOL YRNG
syntax keyword HP50GStatement T MATCH vMATCH CH HMS FXND UPDIR DAT EVAL YSLICE YVOL YYRNG ZEROS ZFACTOR ZVOL
" repeat
syntax keyword HP50GRepeat
      \ IF THEN ELSE ELSE
      \ CASE THEN END
      \ START NEXT STEP
      \ FOR NEXT STEP
      \ DO UNTIL INPUT
      \ WHILE REPEAT END
      \ IFT IFTE CHOOSE INFORM
      \ DOERR ERRN ERRM ERR0 LASTARG
      \ DBUG HALT CONT KILL OFF

" Operators
syntax match HP50GOperator "\v\\\<\<"me=e-2
syntax match HP50GOperator "\v\\\>\>"me=e-2
"syntax match HP50GOperator2 "\v\\-\>"me=e-2
"syntax match HP50GOperator2 "\v\\-\>"me=e-2

syntax match HP50GOperator2 "\v\\oo"
syntax match HP50GOperator2 "\v\\\^o"
syntax match HP50GOperator2 "\v\\.d"
syntax match HP50GOperator2 "\v\\.x"
syntax match HP50GOperator2 "\v\\.S"
syntax match HP50GOperator2 "\v\\.V"
syntax match HP50GOperator2 "\v\\PI"
syntax match HP50GOperator2 "\v\\pi"

syntax match HP50GOperator2 "\v\\Ga"
syntax match HP50GOperator2 "\v\\Gd"
syntax match HP50GOperator2 "\v\\GD"
syntax match HP50GOperator2 "\v\\Ge"
syntax match HP50GOperator2 "\v\\Gg"
syntax match HP50GOperator2 "\v\\Gh"
syntax match HP50GOperator2 "\v\\Gl"
syntax match HP50GOperator2 "\v\\Gm"
syntax match HP50GOperator2 "\v\\Gn"
syntax match HP50GOperator2 "\v\\Gr"
syntax match HP50GOperator2 "\v\\Gs"
syntax match HP50GOperator2 "\v\\GS"
syntax match HP50GOperator2 "\v\\Gt"
syntax match HP50GOperator2 "\v\\Gw"
syntax match HP50GOperator2 "\v\\GW"
syntax match HP50GOperator2 "\v\\\|v"
syntax match HP50GOperator2 "\v\\\|"

" syntax match HP50GOperator2 "\v\\<="
" syntax match HP50GOperator2 "\v\\<-"
" syntax match HP50GOperator2 "\v\\="
" syntax match HP50GOperator2 "\v\\>="
" syntax match HP50GOperator2 "\v\\|^"
" syntax match HP50GOperator2 "\v\\|>"
" syntax match HP50GOperator2 "\v\\->"
" syntax match HP50GOperator2 "\v\\:-"
" syntax match HP50GOperator2 "\v\\\[\]"
" syntax match HP50GOperator2 "\v\\.d"
" syntax match HP50GOperator2 "\v\\^o"
" syntax match HP50GOperator2 "\v\\O/"
" syntax match HP50GOperator2 "\v\\oo"
" syntax match HP50GOperator2 "\v\\pi"
" syntax match HP50GOperator2 "\v\\PI"
" syntax match HP50GOperator2 "\v\\|v"
" syntax match HP50GOperator2 "\v\\v/"
" syntax match HP50GOperator2 "\v\\.S"
" syntax match HP50GOperator2 "\v\\.V"
" syntax match HP50GOperator2 "\v\\.x"
" syntax match HP50GOperator2 "\v\\x-"

syn match HP50GOperator "\(<<\|>>\|[-+*/%&^|<>!=]\)="
syn match HP50GOperator "<<\|>>\|&&\|||\|++\|--\|->"
syn match HP50GOperator "[.!~*&%<>^|=,+-]"
syn match HP50GOperator "/[^/*=]"me=e-1
syn match HP50GOperator "/$"
syn match HP50GOperator "&&\|||"
syn match HP50GOperator "[][]"
syn match cBraces display "[{}]"

" Match all HP50G number types
syntax match HP50GNumber "\v<\d+>"
syntax match HP50GNumber "\v<\d+\.\d+>"
syntax match HP50GNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax match HP50GNumber "\v<0x\x+([Pp]-?)?\x+>"
syntax match HP50GNumber "\v<0b[01]+>"
syntax match HP50GNumber "\v<0o\o+>"
" ------------------------------------------------------------------------------

if !has('conceal')
  finish
else
  " syntax match Conceal +\\->+ conceal cchar=➩
  syntax match Conceal "\v\\\<\=" conceal cchar=≤
  syntax match Conceal "\v\\\>\=" conceal cchar=≥
  syntax match Conceal "\v\\\=" conceal cchar=≠
  syntax match Conceal "\v\\Gl" conceal cchar=λ
  syntax match Conceal "\v\\Gd" conceal cchar=δ
  syntax match Conceal "\v\\Gb" conceal cchar=β
  syntax match Conceal "\v\\Gh" conceal cchar=θ

  syntax keyword Conceal alpha   conceal cchar=α
  syntax keyword Conceal beta    conceal cchar=β
  syntax keyword Conceal gamma   conceal cchar=γ
  syntax keyword Conceal delta   conceal cchar=δ
  syntax keyword Conceal epsilon conceal cchar=ε
  syntax keyword Conceal zeta    conceal cchar=ζ
  syntax keyword Conceal eta     conceal cchar=η
  syntax keyword Conceal theta   conceal cchar=θ
  syntax keyword Conceal kappa   conceal cchar=κ
  syntax keyword Conceal lambda  conceal cchar=λ
  syntax keyword Conceal mu      conceal cchar=μ
  syntax keyword Conceal nu      conceal cchar=ν
  syntax keyword Conceal xi      conceal cchar=ξ
  syntax keyword Conceal pi      conceal cchar=π
  syntax keyword Conceal rho     conceal cchar=ρ
  syntax keyword Conceal sigma   conceal cchar=σ
  syntax keyword Conceal tau     conceal cchar=τ
  syntax keyword Conceal upsilon conceal cchar=υ
  syntax keyword Conceal phi     conceal cchar=φ
  syntax keyword Conceal chi     conceal cchar=χ
  syntax keyword Conceal psi     conceal cchar=ψ
  syntax keyword Conceal omega   conceal cchar=ω
  syntax keyword Conceal Delta   conceal cchar=Δ
  syntax keyword Conceal Lambda  conceal cchar=Λ
  syntax keyword Conceal nabla   conceal cchar=∇
  syntax keyword Conceal Omega   conceal cchar=Ω

  syntax match Conceal "\v\\O\/" conceal cchar=Φ
  syntax match Conceal "\v\\v\/" conceal cchar=√
""  syntax match Conceal "\v0" conceal conceal cchar=Ø
  syntax match Conceal "\v\\\Gg" conceal cchar=γ
  syntax match Conceal "\v\\\Ge" conceal cchar=ε
  syntax match Conceal "\v\\\Gr" conceal cchar=ρ
  syntax match Conceal "\v\\\Gt" conceal cchar=τ
  syntax match Conceal "\v\\\Ga" conceal cchar=α
  syntax match Conceal "\v\\\Gn" conceal cchar=ν
  syntax match Conceal "\v\\\Gs" conceal cchar=σ
  syntax match Conceal "\v\\\Gw" conceal cchar=ω
  syntax match Conceal "\v\\\Gm" conceal cchar=θ
  syntax match Conceal "\v\\\Gh" conceal cchar=θ
  syntax match Conceal "\v\\\GD" conceal cchar=Δ
  syntax match Conceal "\v\\\GW" conceal cchar=Ω
  syntax match Conceal "\v\\\GS" conceal cchar=∑

" syntax match Conceal "\v\\\<-\\-\>\v" conceal cchar=↹
"  syntax match Conceal "\v\\-\>" conceal cchar=➜
" ----------------------------------------------------------------------------
"@  syn match ArrowHead contained ">" conceal cchar= ""
"@  "↔
"@  syn match ArrowTail contained "-" conceal cchar=➜
"@  syn match ArrowFull "->" contains=ArrowHead,ArrowTail
"@  syn cluster cParenGroup add=ArrowTail,ArrowHead
"@  hi cParenGroup ctermfg=DarkBlue ctermbg=none guifg=DarkBlue guibg=none
" ----------------------------------------------------------------------------
  syntax match Conceal "\v\\\|\^" conceal cchar=↵
  syntax match Conceal "\v\\\|v" conceal cchar=⇙
  syntax match Conceal "\v\\\.d" conceal cchar=∂
  syntax match Conceal "\v\\\.S" conceal cchar=∫
  syntax match Conceal "\v\\\.V" conceal cchar=∆
  syntax match Conceal "\v\\\.x" conceal cchar=×
  syntax match Conceal "\v\\:-" conceal cchar=÷
  syntax match Conceal "\v\\oo" conceal cchar=∞
  syntax keyword Conceal SUM conceal cchar=∑
  syntax match Conceal +\\pi+ conceal cchar=π
  syntax match Conceal +\\PI+ conceal cchar=π
  set conceallevel=2

  if has("gui_running")
    hi Conceal font=Monaco ctermfg=DarkBlue ctermbg=white guifg=DarkBlue guibg=white
  else
    hi Conceal font=Monaco ctermfg=DarkBlue ctermbg=none guifg=DarkBlue guibg=none
  endif
  " set conceallevel=1 concealcursor=nvic
  "hi Conceal font=Monaco gui=bold,underline cterm=bold,underline guifg=yellow guibg=red ctermfg=yellow ctermbg=red
  "hi Conceal ctermfg=DarkBlue ctermbg=none guifg=DarkBlue guibg=none
  "hi Conceal font=Monaco ctermfg=DarkBlue guifg=DarkBlue
endif

syntax match   HP50GStatement "\vI\\-\>R"
syntax match   HP50GStatement "\vR\\-\>I"
syntax match   HP50GStatement "\vXY\\\<-\\-\>P"
syntax match   HP50GStatement "\vD\\\<-\\-\>R"
syntax match   HP50GStatement "\vR\\\<-\\-\>C"

syn region HP50GComment start="@" end="$"

""syntax keyword HP50GOperator "->" conceal cchar=λ
"syntax keyword HP50GOperator lambda conceal cchar=λ
" ------------------------------------------------------------------------------

hi link HP50GAcces          Statement
hi link HP50GByte           Number
hi link HP50GComment        Comment
hi link HP50GConditional    Conditional
hi link HP50GFunction       Function
hi link HP50GLabel          Label
hi link HP50GMatrixDelimiter Identifier
hi link HP50GModifier       Type
hi link HP50GNumber         Number
hi link HP50GOperator       Operator
hi link HP50GRepeat         Repeat
hi link HP50GStatement      Statement
hi link HP50GString         String
hi link HP50GStructure      Structure
hi link HP50GTodo           Todo
hi link HP50GType           Type
hi link HP50GUnclassified   Statement
hi def link cBraces Delimiter

hi HP50GDocs         ctermfg=white       guifg=white         gui=italic
hi HP50GObject         ctermfg=white       guifg=white         gui=italic
hi HP50GFunction       ctermfg=red    guifg=Orange        gui=NONE
hi HP50GMyFunction     ctermfg=LightBlue    guifg=Orange        gui=NONE
hi HP50GStatement      ctermfg=Green       guifg=Green         gui=NONE
hi HP50GNumber         ctermfg=LightBlue   guifg=LightBlue     gui=NONE
hi HP50GByte           ctermfg=LightRed    guifg=LightRed      gui=bold
hi HP50GString         ctermfg=LightBlue   guifg=LightBlue     gui=NONE
hi HP50GMatrixDelimiter    ctermfg=lightred    guifg=lightred      gui=NONE
hi HP50GConditional        ctermfg=Green       guifg=Green         gui=NONE
hi HP50GConstant       ctermfg=white       guifg=white         gui=NONE
hi HP50GModifier       ctermfg=Green       guifg=Green         gui=NONE
hi HP50GType           ctermfg=white       guifg=white         gui=NONE
hi HP50GStructure      ctermfg=Green       guifg=Green         gui=NONE
hi HP50GRepeat         ctermfg=Yellow      guifg=Green         gui=NONE
hi HP50GOperator       ctermfg=Green       guifg=Green         gui=NONE
hi Conceal guibg=White guifg=DarkMagenta
hi HP50GOperator2      ctermfg=Yellow     guifg=red        gui=NONE
hi HP50GAssignment         ctermfg=Magenta     guifg=Magenta       gui=NONE
hi HP50GComment        ctermfg=LightBlue   guifg=#00A0A0       gui=italic
hi HP50GLabel          ctermfg=Green       guifg=Green         gui=NONE
hi HP50GDelimiter      ctermfg=Yellow      guifg=Yellow        gui=NONE
hi HP50GComparator     ctermfg=Yellow      guifg=Yellow        gui=NONE
let b:current_syntax = "HP50G"

" vim: fdm=marker:sw=2:sts=2:et

