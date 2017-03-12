;Evaluate aX^2 + bY^2 + cZ^2 where a,b,c = 2n,2n-1, or 2n+1
;           2X^2 + 5Y^2 + 7Z^2

  AREA lab201a  CODE  READONLY
  ENTRY
 ;Load
    MOV R0,#0
    LDR R1,=X
    LDR R2,=Y
    LDR R3,=Z
 ;Logic
    MUL R1,R1,R1        ;R1 <= X^2
    MUL R2,R2,R2        ;R2 <= Y^2
    MUL R3,R3,R3        ;R3 <= Z^2
    ADD R1,R0,R1,LSL#1  ;R1 <= X^2
    ADD R2,R2,R2,LSL#2  ;R2 <= 5Y^2
    RSB R3,R3,R3,LSL#3  ;R3 <= 7X^2
 ;Store
    ADD R0,R1,R2
    ADD R0,R0,R3
    STR R0,Sum32        ;Stores result at address allocated to 'Sum32'
 ;Variable Definitions
 X DCB 1
 Y DCB 2
 Z DCB 3
 Sum32 DCD 0
  EXIT
