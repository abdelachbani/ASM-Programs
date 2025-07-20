.text   0x00400000          # Code start address
    .globl  __start         # Global label
__start:
    addi    $8, $0, 10000   # Initialize $8 with 10^4
    mult    $8, $8          # HI-LO <- $8 * $8
    mflo    $9              # $9 <- LO
    mult    $8, $9          # HI-LO <- $8 * $9
    .end                    # End of program


