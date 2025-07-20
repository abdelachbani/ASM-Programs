.text   0x00400000          # Code segment start address
    .globl  __start         # Global label
__start:
    addi    $8,     $0, 1   # Initialize $8 with 1
    addi    $9,     $0, -2  # Initialize $9 with -2
    add     $10,    $8, $9  # $10 <- $8 + $9
    .end                    # End of program