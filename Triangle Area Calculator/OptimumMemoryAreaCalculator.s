        .globl  __start
.data   0x10000000
base:   .word   3
height: .word   10
area:   .space  4
.text   0x00400000
# Same as the AreaCalculator.s, but using the least amount of memory possible.
__start:
    la      $10,    base
    lw      $11,    0($10)
    la      $10,    height
    lw      $10,    0($10)
    mult    $11,    $10
    mflo    $10
    addi    $11,    $0,     2
    div     $10,    $11
    mflo    $10
    la      $11,    area
    sw      $10,    0($11)
        .end