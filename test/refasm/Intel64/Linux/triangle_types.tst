triangle_types(i0, i1, i2)
     0 : sub  rsp, #0x08 ; 48 83 ec 08              
     1 : mov  [rsp], r12 ; 4c 89 64 24 00           
     2 : cmp  rdi, #0    ; 48 83 ff 00              
     3 : jg   [7]        ; 0f 8f 11 00 00 00        
     4 : mov  rax, #0    ; 48 c7 c0 00 00 00 00     
     5 : jmp  [98]       ; e9 c1 01 00 00           
     6 : jmp  [97]       ; e9 b5 01 00 00           
     7 : cmp  rsi, #0    ; 48 83 fe 00              
     8 : jg   [12]       ; 0f 8f 11 00 00 00        
     9 : mov  rax, #0    ; 48 c7 c0 00 00 00 00     
    10 : jmp  [98]       ; e9 a6 01 00 00           
    11 : jmp  [97]       ; e9 9a 01 00 00           
    12 : cmp  rdx, #0    ; 48 83 fa 00              
    13 : jg   [17]       ; 0f 8f 11 00 00 00        
    14 : mov  rax, #0    ; 48 c7 c0 00 00 00 00     
    15 : jmp  [98]       ; e9 8b 01 00 00           
    16 : jmp  [97]       ; e9 7f 01 00 00           
    17 : mov  rcx, rdi   ; 48 89 f9                 
    18 : add  rcx, rsi   ; 48 01 f1                 
    19 : mov  rax, rdi   ; 48 89 f8                 
    20 : add  rax, rdx   ; 48 01 d0                 
    21 : mov  r12, rsi   ; 49 89 f4                 
    22 : add  r12, rdx   ; 49 01 d4                 
    23 : cmp  rdi, r12   ; 4c 39 e7                 
    24 : jle  [28]       ; 0f 8e 11 00 00 00        
    25 : mov  rax, #0    ; 48 c7 c0 00 00 00 00     
    26 : jmp  [98]       ; e9 5f 01 00 00           
    27 : jmp  [97]       ; e9 53 01 00 00           
    28 : cmp  rsi, rax   ; 48 39 c6                 
    29 : jle  [33]       ; 0f 8e 11 00 00 00        
    30 : mov  rax, #0    ; 48 c7 c0 00 00 00 00     
    31 : jmp  [98]       ; e9 45 01 00 00           
    32 : jmp  [97]       ; e9 39 01 00 00           
    33 : cmp  rdx, rcx   ; 48 39 ca                 
    34 : jle  [38]       ; 0f 8e 11 00 00 00        
    35 : mov  rax, #0    ; 48 c7 c0 00 00 00 00     
    36 : jmp  [98]       ; e9 2b 01 00 00           
    37 : jmp  [97]       ; e9 1f 01 00 00           
    38 : cmp  rdi, rsi   ; 48 39 f7                 
    39 : jne  [48]       ; 0f 85 2b 00 00 00        
    40 : cmp  rsi, rdx   ; 48 39 d6                 
    41 : jne  [45]       ; 0f 85 11 00 00 00        
    42 : mov  rax, #0x02 ; 48 c7 c0 02 00 00 00     
    43 : jmp  [98]       ; e9 08 01 00 00           
    44 : jmp  [47]       ; e9 0c 00 00 00           
    45 : mov  rax, #0x03 ; 48 c7 c0 03 00 00 00     
    46 : jmp  [98]       ; e9 f7 00 00 00           
    47 : jmp  [57]       ; e9 2f 00 00 00           
    48 : cmp  rdi, rdx   ; 48 39 d7                 
    49 : jne  [53]       ; 0f 85 11 00 00 00        
    50 : mov  rax, #0x03 ; 48 c7 c0 03 00 00 00     
    51 : jmp  [98]       ; e9 dd 00 00 00           
    52 : jmp  [57]       ; e9 15 00 00 00           
    53 : cmp  rsi, rdx   ; 48 39 d6                 
    54 : jne  [57]       ; 0f 85 0c 00 00 00        
    55 : mov  rax, #0x03 ; 48 c7 c0 03 00 00 00     
    56 : jmp  [98]       ; e9 c3 00 00 00           
    57 : imul rdi, rdi   ; 48 0f af ff              
    58 : imul rsi, rsi   ; 48 0f af f6              
    59 : imul rdx, rdx   ; 48 0f af d2              
    60 : mov  rcx, rdi   ; 48 89 f9                 
    61 : add  rcx, rsi   ; 48 01 f1                 
    62 : mov  rax, rdi   ; 48 89 f8                 
    63 : add  rax, rdx   ; 48 01 d0                 
    64 : mov  r12, rsi   ; 49 89 f4                 
    65 : add  r12, rdx   ; 49 01 d4                 
    66 : cmp  rdi, r12   ; 4c 39 e7                 
    67 : jne  [71]       ; 0f 85 11 00 00 00        
    68 : mov  rax, #0x01 ; 48 c7 c0 01 00 00 00     
    69 : jmp  [98]       ; e9 90 00 00 00           
    70 : jmp  [80]       ; e9 2f 00 00 00           
    71 : cmp  rsi, rax   ; 48 39 c6                 
    72 : jne  [76]       ; 0f 85 11 00 00 00        
    73 : mov  rax, #0x01 ; 48 c7 c0 01 00 00 00     
    74 : jmp  [98]       ; e9 76 00 00 00           
    75 : jmp  [80]       ; e9 15 00 00 00           
    76 : cmp  rdx, rcx   ; 48 39 ca                 
    77 : jne  [80]       ; 0f 85 0c 00 00 00        
    78 : mov  rax, #0x01 ; 48 c7 c0 01 00 00 00     
    79 : jmp  [98]       ; e9 5c 00 00 00           
    80 : sub  r12, rdi   ; 49 29 fc                 
    81 : sub  rax, rsi   ; 48 29 f0                 
    82 : sub  rcx, rdx   ; 48 29 d1                 
    83 : cmp  r12, #0    ; 49 83 fc 00              
    84 : jge  [88]       ; 0f 8d 11 00 00 00        
    85 : mov  rax, #0x05 ; 48 c7 c0 05 00 00 00     
    86 : jmp  [98]       ; e9 3d 00 00 00           
    87 : jmp  [97]       ; e9 31 00 00 00           
    88 : cmp  rax, #0    ; 48 83 f8 00              
    89 : jge  [93]       ; 0f 8d 11 00 00 00        
    90 : mov  rax, #0x05 ; 48 c7 c0 05 00 00 00     
    91 : jmp  [98]       ; e9 22 00 00 00           
    92 : jmp  [97]       ; e9 16 00 00 00           
    93 : cmp  rcx, #0    ; 48 83 f9 00              
    94 : jge  [97]       ; 0f 8d 0c 00 00 00        
    95 : mov  rax, #0x05 ; 48 c7 c0 05 00 00 00     
    96 : jmp  [98]       ; e9 07 00 00 00           
    97 : mov  rax, #0x04 ; 48 c7 c0 04 00 00 00     
    98 : mov  r12, [rsp] ; 4c 8b a4 24 00 00 00 00  
    99 : add  rsp, #0x08 ; 48 83 c4 08              
   100 : ret             ; c3                       
