; M5: execute FROM the async external SRAM. Write 8 distinct bytes (0x11..0x88)
; to 0x2000, copy them to 0x4000, then loop. The tb white-box asserts the SRAM
; contents and that wait_n was genuinely stretched.
        ORG 0000H
        MVI A,11H
        STA 2000H
        MVI A,22H
        STA 2001H
        MVI A,33H
        STA 2002H
        MVI A,44H
        STA 2003H
        MVI A,55H
        STA 2004H
        MVI A,66H
        STA 2005H
        MVI A,77H
        STA 2006H
        MVI A,88H
        STA 2007H
        LDA 2000H
        STA 4000H
        LDA 2001H
        STA 4001H
        LDA 2002H
        STA 4002H
        LDA 2003H
        STA 4003H
        LDA 2004H
        STA 4004H
        LDA 2005H
        STA 4005H
        LDA 2006H
        STA 4006H
        LDA 2007H
        STA 4007H
DONE:   JMP DONE
        END
