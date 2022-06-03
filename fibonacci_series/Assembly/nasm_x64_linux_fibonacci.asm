; only works until 94 ...
; NASM, 64-Bit, Linux

extern printf
extern scanf

section .data
	greet:     	db 'Hello! How many terms would you like in the series?: ',10, 0    
	greetLen:  	equ $-greet
    fmtout:    	db "%llu", 10, 0
    fmtin: 		db "%d", 0
    inp: times 8 db 0 ; 64-bits integer = 8 bytes

section .text
	global _start

_start:
	; Prints out the initial greeting and question
	mov rax,4            	
	mov rbx,1            	
	mov rcx,greet        	
	mov rdx,greetLen     	
	int 80h

	; Calling scanf for a decimal input
	mov rsi, inp
   	mov rdi, fmtin
   	mov	rax, 0
   	call scanf

	; Print the first and second value
	mov rdi, 0
    call _print_value
	mov rdi, 1
    call _print_value

   	; Move the input in the loop counter rcx
   	mov rcx, qword [inp]
   	sub rcx, 2

   	; Initialize our first two values
	mov rax, 0
	mov rbx, 1

_loop:
	; calc the new value in rdx and shift the rest to rax and rbx
	mov rdx, rax
	add rdx, rbx
	mov rax, rbx
	mov rbx, rdx

	; Push the some registers before the external call (otherwise the get lost)
	push rcx
	push rax

	; Print the current value
	mov rdi, rdx
    call _print_value

    ; Restore the register
    pop rax
	pop rcx

	loop _loop

	call _exit

; from https://www.mourtada.se/calling-functions-in-x86-assembly/
_print_value:
   	push rbp
    mov rbp, rsp

    push rdi
    mov	rdi, fmtout
    pop	rsi
    mov	rax, 0
    call printf wrt ..plt

    mov rsp, rbp
    pop rbp
    ret
_exit:
    mov rdi, 0 ; exit code 0
    mov rax, 60 ; system call for exit
    syscall