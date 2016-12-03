if exists("b:current_syntax")
    finish
endif

if !has('conceal')
    finish
endif

set conceallevel=2
syn match ArrowHead contained ">" conceal cchar= ""
syn match ArrowTail contained "\\-" conceal cchar=➜
syn match ArrowFull "\\->" contains=ArrowHead,ArrowTail
syn cluster cParenGroup add=ArrowTail,ArrowHead
hi conceal ctermfg=DarkBlue ctermbg=none guifg=DarkBlue guibg=none

syn match NumberUmSeteTres contained "173" conceal cchar= ""
syn match DoubleSlash contained "\\" conceal cchar=➜
syn match ArrowwFull "\\173" contains=NumberUmSeteTres,DoubleSlash
syn cluster cParenGroup add=DoubleSlash,NumberUmSeteTres

syntax match conceal "\v\\\<\=" conceal cchar=≤
syntax match conceal "\v\\\<\)" conceal cchar=∡
syntax match conceal "\v\\\>\=" conceal cchar=≥
syntax match conceal "\v\\\=" conceal cchar=≠
syntax match conceal "\v\\-\>IInt" conceal cchar=∬
syntax match conceal "\v\\-\>IIInt" conceal cchar=∭
syntax match conceal "\v\\\<\<" conceal cchar=«
syntax match conceal "\v\\\>\>" conceal cchar=»

syntax keyword conceal alpha   conceal cchar=α
syntax keyword conceal beta    conceal cchar=β
syntax keyword conceal gamma   conceal cchar=γ
syntax keyword conceal delta   conceal cchar=δ
syntax keyword conceal epsilon conceal cchar=ε
syntax keyword conceal zeta    conceal cchar=ζ
syntax keyword conceal eta     conceal cchar=η
syntax keyword conceal theta   conceal cchar=θ
syntax keyword conceal kappa   conceal cchar=κ
syntax keyword conceal lambda  conceal cchar=λ
syntax keyword conceal mu      conceal cchar=μ
syntax keyword conceal nu      conceal cchar=𝛎
syntax keyword conceal xi      conceal cchar=ξ
syntax keyword conceal pi      conceal cchar=𝝅
syntax keyword conceal rho     conceal cchar=ρ
syntax keyword conceal sigma   conceal cchar=σ
syntax keyword conceal tau     conceal cchar=τ
syntax keyword conceal upsilon conceal cchar=υ
syntax keyword conceal phi     conceal cchar=φ
syntax keyword conceal chi     conceal cchar=χ
syntax keyword conceal psi     conceal cchar=ψ
syntax keyword conceal omega   conceal cchar=ω
syntax keyword conceal Delta   conceal cchar=Δ
syntax keyword conceal Lambda  conceal cchar=Λ
syntax keyword conceal nabla   conceal cchar=∇
syntax keyword conceal Omega   conceal cchar=Ω

syntax keyword Conceal SUM conceal cchar=∑
syntax keyword Conceal CROSS conceal cchar=⨉"❎
syntax keyword Conceal DOT conceal cchar=∙
syntax keyword Conceal DEFINE conceal cchar=≝

syntax match conceal "\v\\O\/" conceal cchar=Φ
syntax match conceal "\v\\v\/" conceal cchar=√
""  syntax match Conceal "\v0" conceal conceal cchar=Ø
syntax match Conceal "\v\\\Gl" conceal cchar=λ
syntax match Conceal "\v\\\Gb" conceal cchar=β
syntax match Conceal "\v\\\Gd" conceal cchar=δ
syntax match Conceal "\v\\\Gh" conceal cchar=θ
syntax match conceal "\v\\\GD" conceal cchar=Δ
syntax match conceal "\v\\\GS" conceal cchar=∑
syntax match conceal "\v\\\GW" conceal cchar=Ω
syntax match conceal "\v\\\Ga" conceal cchar=α
syntax match conceal "\v\\\Ge" conceal cchar=ε
syntax match conceal "\v\\\Gg" conceal cchar=γ
syntax match conceal "\v\\\Gh" conceal cchar=θ
syntax match conceal "\v\\\Gm" conceal cchar=μ
syntax match conceal "\v\\\Gn" conceal cchar=ν
syntax match conceal "\v\\\Gr" conceal cchar=ρ
syntax match conceal "\v\\\Gs" conceal cchar=σ
syntax match conceal "\v\\\Gt" conceal cchar=τ
syntax match conceal "\v\\\Gw" conceal cchar=ω

"ထ
syntax match conceal "\v\\\|\^" conceal cchar=↵
syntax match conceal "\v\\\|v" conceal cchar=⇙
syntax match conceal "\v\\\.d" conceal cchar=∂
syntax match conceal "\v\\\.S" conceal cchar=∫
syntax match conceal "\v\\\.V" conceal cchar=∆
syntax match conceal "\v\\\.x" conceal cchar=×
syntax match conceal "\v\\:-" conceal cchar=÷
syntax match conceal "\v\\oo" conceal cchar=∞"ထ "∞
syntax match conceal +\\pi+ conceal cchar=𝝅
syntax match conceal +\\PI+ conceal cchar=π

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

syn region HP50GComment start="@" end="$"

" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
"  Match language specific keywords

syntax keyword HP50GDocs HELP CASCMD

"syntax keyword HP50GFunction
syntax match   HP50GFunction "ARRY"
syntax match   HP50GFunction "OBJ"
syntax match   HP50GFunction "LIST"
syntax match   HP50GFunction "DAT"
syntax match   HP50GFunction "EQ"

syntax keyword  HP50GMyFunction varON inMat toInteger conmatrix diagmatrix get geti IIInt IInt jLcmatrix
syntax keyword  HP50GMyFunction LoadCST jLrmatrix matrix nInt put puti rdmmatrix
syntax keyword  HP50GMyFunction func derivadafx vector toFloat setf usetf replacematrix rndmatrix submatrix vander
syntax keyword  HP50GMyFunction showformula NEWTON coord conf IVAN inMatrref inMatSol integralfx
syntax keyword  HP50GMyFunction egyptfrac residue briot

" Match all HP50G number types
syntax match HP50GNumber "\v<\d+>"
syntax match HP50GNumber "\v<\d+\.\d+>"
syntax match HP50GNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax match HP50GNumber "\v<0x\x+([Pp]-?)?\x+>"
syntax match HP50GNumber "\v<0b[01]+>"
syntax match HP50GNumber "\v<0o\o+>"

syn match   HP50GStringEscape contained "''"
syn match   HP50GStringEscapeGPC contained '""'
syn region  HP50GString start=+'+ end=+'+
"contains=HP50GStringEscape
syn region  HP50GStringGPC start=+"+ end=+"+
"contains=HP50GStringEscapeGPC
" ----------------------------------------------------------------------------
"
syntax keyword HP50GStatement TAG STO ROW COL INV GROB KEYEVAL SCROLL ABCUV ABS ACK ACKALL ACOS2S ACOSH ADD ADDTMOD
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
syntax keyword HP50GStatement DUP DUP2 DUPDUP DUPN EGCD EGV EGVL ENDSUB ENG
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
syntax keyword HP50GStatement PUSH XCOL XLIB XOR XPON XRNG XVOL XXRNG YCOL YRNG
syntax keyword HP50GStatement T MATCH vMATCH CH HMS FXND UPDIR EVAL YSLICE YVOL YYRNG ZEROS ZFACTOR ZVOL
syntax keyword HP50GStatement SIN COS TAN ASIN ACOS ATAN EXP REMAINDER EXP2HYP LNCOLLECT TAN2CS2

" ------------------------------------------------------------------------------
hi link HP50GMyFunction     DiffText
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
hi link HP50GStringGPC     String
hi link HP50GStructure      Structure
hi link HP50GTodo           Todo
hi link HP50GType           Type
hi link HP50GUnclassified   Statement
hi def link cBraces Delimiter
hi link HP50GRepeat rubyBlockParameter
"hi HP50GRepeat         ctermfg=Yellow      guifg=Green         gui=NONE

let b:current_syntax = "HP50G"

" vim: fdm=marker:sw=2:sts=2:et
