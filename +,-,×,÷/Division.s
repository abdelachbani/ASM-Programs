.text   0x00400000          # Code start address
    .globl  __start         # Global label
__start:
    addi    $8,     $0, 43  # Initialize $8 with 43
    addi    $9,     $0, 12  # Initialize $9 with 12
    div     $8,     $9      # Divide $8 by $9
    mflo    $10             # LO -> $10 (quotient)
    mfhi    $11             # HI -> $11 (remainder)
    .end                    # End of program