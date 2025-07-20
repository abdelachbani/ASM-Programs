.data   0x10000000
values: .byte 2, 3, 1, 5, 2, 2, 0
result: .half 0, 0

.text   0x00400000
__start:
    la      $2,         values
    or      $4,         $0,         $0
    or      $5,         $0,         $0

while:
    lb      $3,         0($2)
    beq     $3,         $0,         exit
    add     $5,         $5,         $3
    addi    $4,         $4,         1
    addi    $2,         $2,         1
    j       while

exit:          div     $5,         $4
    mflo    $5
    la      $2,         result
    sh      $5,         0($2) # Store integer average
    mfhi    $5
    sh      $5,         2($2) # Store fractional average
end:        .end