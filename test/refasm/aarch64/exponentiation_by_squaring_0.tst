exponentiation_by_squaring_0(i0, i1, i2)
     0 : sub   sp, sp, #0x10    ; ff 43 00 d1  
     1 : str   x18, [sp], #0    ; f2 03 00 f9  
     2 : str   x19, [sp], #0x01 ; f3 07 00 f9  
     3 : mov   x3, #0x01        ; 23 00 80 d2  
     4 : mov   x3, #0           ; 03 00 80 d2  
     5 : mov   x18, #0          ; 12 00 80 d2  
     6 : cmp   x18, x1          ; 5f 02 01 eb  
     7 : b.ge  [15]             ; 0a 01 00 54  
     8 : ldrsw x19, [x0], x3    ; 13 68 a3 b8  
     9 : mov   x19, #0x01       ; 33 00 80 d2  
    10 : str   w19, [x2], #0    ; 53 00 00 b9  
    11 : add   x18, x18, #0x01  ; 52 06 00 91  
    12 : add   x3, x3, #0x04    ; 63 10 00 91  
    13 : add   x2, x2, #0x04    ; 42 10 00 91  
    14 : b     [6]              ; f8 ff ff 17  
    15 : mov   x0, #0           ; 00 00 80 d2  
    16 : ldr   x18, [sp], #0    ; f2 03 40 f9  
    17 : ldr   x19, [sp], #0x01 ; f3 07 40 f9  
    18 : add   sp, sp, #0x10    ; ff 43 00 91  
    19 : ret   x30              ; c0 03 5f d6  
