.text   0x00400000
    .globl  __start
__start:
    addi    $8,     $0,     20  # $8 = a
    addi    $9,     $0,     -8  # $9 = b
    addi    $15,    $0,     15  # $15 = 15
    mult    $8,     $15         # LO = a*$15
    mflo    $12                 # $12 = a*$15
    sub     $13,    $8,     $9  # $13 = a-b
    div     $12,    $13         # LO = (a*$15)/(a-b), HI = (a*$15)%(a-b)
    mflo    $10                 # $10 = c
    mfhi    $11                 # $11 = d