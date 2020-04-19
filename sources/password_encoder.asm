; enter a password, returns an encoded password
; x86_64 assembly intel syntax 
; 64 bits linux syscalls

%include "module.asm"

LEN equ 100

section .data
    ligne db " -------------------------------------", 10, 0
    description db " | Encodage de chaines de caractères |", 10, 0
    strInput db  "Entrez un mot de passe : ", 0
    strResult db "Mot de passe encodé : ", 0
    newLine db 10

section .bss
    inp resb LEN
    output resb LEN

section .text
    global _start

_start:

main:
    print ligne, 0
    print description, 0
    print ligne, 0
    print strInput, 0

    ; -------------------

    input inp, LEN
    mov rcx, LEN        ; loop counter
    mov esi, inp        ; source string
    mov edi, output     ; destination string
    encode:
        lodsb           ; load one byte from esi (inp) and put it in al
        add al, 5       ; encode
        stosb           ; put one byte from al to edi (output)
        loop encode

    ; --------------------

    print strResult, 0
    print output, LEN
    print newLine, 1
    exit