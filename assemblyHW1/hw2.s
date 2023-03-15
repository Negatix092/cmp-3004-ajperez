	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 1
	.globl	_swapl                          ; -- Begin function swapl
	.p2align	2
_swapl:                                 ; @swapl
	.cfi_startproc
; %bb.0:
	ldr	x8, [x0]
	ldr	x9, [x1]
	str	x9, [x0]
	str	x8, [x1]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w9, #12345
	mov	w8, #2354
	movk	w8, #1, lsl #16
	stp	x8, x9, [sp]
	add	x0, sp, #8
	mov	x1, sp
	bl	_swapl
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
