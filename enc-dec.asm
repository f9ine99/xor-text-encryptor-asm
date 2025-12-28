ORG 100h

LEA DX, prompt
MOV AH, 09h
INT 21h

LEA DX, buffer
MOV AH, 0Ah
INT 21h

MOV CL, [buffer + 1]
MOV CH, 0
LEA SI, buffer + 2

encrypt_loop:
    MOV AL, [SI]
    XOR AL, key
    MOV [SI], AL
    INC SI
    LOOP encrypt_loop

MOV BL, [buffer + 1]
MOV BH, 0
MOV [buffer + 2 + BX], '$'

LEA DX, msg_enc
MOV AH, 09h
INT 21h

LEA DX, buffer + 2
MOV AH, 09h
INT 21h

LEA DX, msg_pause
MOV AH, 09h
INT 21h

MOV AH, 00h
INT 16h

MOV CL, [buffer + 1]
MOV CH, 0
LEA SI, buffer + 2

decrypt_loop:
    MOV AL, [SI]
    XOR AL, key
    MOV [SI], AL
    INC SI
    LOOP decrypt_loop

LEA DX, msg_dec
MOV AH, 09h
INT 21h

LEA DX, buffer + 2
MOV AH, 09h
INT 21h

RET

prompt    DB "Enter text: $"
msg_enc   DB 0Dh, 0Ah, "Encrypted: $"
msg_pause DB 0Dh, 0Ah, "Press 1 to decrypt...$"
msg_dec   DB 0Dh, 0Ah, "Decrypted: $"
key       DB 15
buffer    DB 20, 0, 22 DUP(0)