triangle_types(i0, i1, i2)
     0 : sub  sp, sp, #0x10    ; ff 43 00 d1  
     1 : str  x18, [sp], #0    ; f2 03 00 f9  
     2 : str  x19, [sp], #0x01 ; f3 07 00 f9  
     3 : cmp  x0, #0           ; 1f 00 00 f1  
     4 : b.gt [8]              ; 8c 00 00 54  
     5 : mov  x0, #0           ; 00 00 80 d2  
     6 : b    [93]             ; 57 00 00 14  
     7 : b    [92]             ; 55 00 00 14  
     8 : cmp  x1, #0           ; 3f 00 00 f1  
     9 : b.gt [13]             ; 8c 00 00 54  
    10 : mov  x0, #0           ; 00 00 80 d2  
    11 : b    [93]             ; 52 00 00 14  
    12 : b    [92]             ; 50 00 00 14  
    13 : cmp  x2, #0           ; 5f 00 00 f1  
    14 : b.gt [18]             ; 8c 00 00 54  
    15 : mov  x0, #0           ; 00 00 80 d2  
    16 : b    [93]             ; 4d 00 00 14  
    17 : b    [92]             ; 4b 00 00 14  
    18 : add  x3, x0, x1       ; 03 00 01 8b  
    19 : add  x18, x0, x2      ; 12 00 02 8b  
    20 : add  x19, x1, x2      ; 33 00 02 8b  
    21 : cmp  x0, x19          ; 1f 00 13 eb  
    22 : b.le [26]             ; 8d 00 00 54  
    23 : mov  x0, #0           ; 00 00 80 d2  
    24 : b    [93]             ; 45 00 00 14  
    25 : b    [92]             ; 43 00 00 14  
    26 : cmp  x1, x18          ; 3f 00 12 eb  
    27 : b.le [31]             ; 8d 00 00 54  
    28 : mov  x0, #0           ; 00 00 80 d2  
    29 : b    [93]             ; 40 00 00 14  
    30 : b    [92]             ; 3e 00 00 14  
    31 : cmp  x2, x3           ; 5f 00 03 eb  
    32 : b.le [36]             ; 8d 00 00 54  
    33 : mov  x0, #0           ; 00 00 80 d2  
    34 : b    [93]             ; 3b 00 00 14  
    35 : b    [92]             ; 39 00 00 14  
    36 : cmp  x0, x1           ; 1f 00 01 eb  
    37 : b.ne [46]             ; 21 01 00 54  
    38 : cmp  x1, x2           ; 3f 00 02 eb  
    39 : b.ne [43]             ; 81 00 00 54  
    40 : mov  x0, #0x02        ; 40 00 80 d2  
    41 : b    [93]             ; 34 00 00 14  
    42 : b    [45]             ; 03 00 00 14  
    43 : mov  x0, #0x03        ; 60 00 80 d2  
    44 : b    [93]             ; 31 00 00 14  
    45 : b    [55]             ; 0a 00 00 14  
    46 : cmp  x0, x2           ; 1f 00 02 eb  
    47 : b.ne [51]             ; 81 00 00 54  
    48 : mov  x0, #0x03        ; 60 00 80 d2  
    49 : b    [93]             ; 2c 00 00 14  
    50 : b    [55]             ; 05 00 00 14  
    51 : cmp  x1, x2           ; 3f 00 02 eb  
    52 : b.ne [55]             ; 61 00 00 54  
    53 : mov  x0, #0x03        ; 60 00 80 d2  
    54 : b    [93]             ; 27 00 00 14  
    55 : mul  x0, x0, x0       ; 00 7c 00 9b  
    56 : mul  x1, x1, x1       ; 21 7c 01 9b  
    57 : mul  x2, x2, x2       ; 42 7c 02 9b  
    58 : add  x3, x0, x1       ; 03 00 01 8b  
    59 : add  x18, x0, x2      ; 12 00 02 8b  
    60 : add  x19, x1, x2      ; 33 00 02 8b  
    61 : cmp  x0, x19          ; 1f 00 13 eb  
    62 : b.ne [66]             ; 81 00 00 54  
    63 : mov  x0, #0x01        ; 20 00 80 d2  
    64 : b    [93]             ; 1d 00 00 14  
    65 : b    [75]             ; 0a 00 00 14  
    66 : cmp  x1, x18          ; 3f 00 12 eb  
    67 : b.ne [71]             ; 81 00 00 54  
    68 : mov  x0, #0x01        ; 20 00 80 d2  
    69 : b    [93]             ; 18 00 00 14  
    70 : b    [75]             ; 05 00 00 14  
    71 : cmp  x2, x3           ; 5f 00 03 eb  
    72 : b.ne [75]             ; 61 00 00 54  
    73 : mov  x0, #0x01        ; 20 00 80 d2  
    74 : b    [93]             ; 13 00 00 14  
    75 : sub  x0, x19, x0      ; 60 02 00 cb  
    76 : sub  x1, x18, x1      ; 41 02 01 cb  
    77 : sub  x2, x3, x2       ; 62 00 02 cb  
    78 : cmp  x0, #0           ; 1f 00 00 f1  
    79 : b.ge [83]             ; 8a 00 00 54  
    80 : mov  x0, #0x05        ; a0 00 80 d2  
    81 : b    [93]             ; 0c 00 00 14  
    82 : b    [92]             ; 0a 00 00 14  
    83 : cmp  x1, #0           ; 3f 00 00 f1  
    84 : b.ge [88]             ; 8a 00 00 54  
    85 : mov  x0, #0x05        ; a0 00 80 d2  
    86 : b    [93]             ; 07 00 00 14  
    87 : b    [92]             ; 05 00 00 14  
    88 : cmp  x2, #0           ; 5f 00 00 f1  
    89 : b.ge [92]             ; 6a 00 00 54  
    90 : mov  x0, #0x05        ; a0 00 80 d2  
    91 : b    [93]             ; 02 00 00 14  
    92 : mov  x0, #0x04        ; 80 00 80 d2  
    93 : ldr  x18, [sp], #0    ; f2 03 40 f9  
    94 : ldr  x19, [sp], #0x01 ; f3 07 40 f9  
    95 : add  sp, sp, #0x10    ; ff 43 00 91  
    96 : ret  x30              ; c0 03 5f d6  
