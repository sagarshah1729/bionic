/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(__accept4)
    movq    %rcx, %r10
    movl    $__NR_accept4, %eax
    syscall
    cmpq    $-MAX_ERRNO, %rax
    jb      1f
    negl    %eax
    movl    %eax, %edi
    call    __set_errno_internal
1:
    ret
END(__accept4)
.hidden __accept4
