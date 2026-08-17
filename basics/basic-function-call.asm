;; compiler generated asm


basic-function-call.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <add>:
   0:	b480      	push	{r7}
   2:	b085      	sub	sp, #20
   4:	af00      	add	r7, sp, #0
   6:	6078      	str	r0, [r7, #4]
   8:	6039      	str	r1, [r7, #0]
   a:	687a      	ldr	r2, [r7, #4]
   c:	683b      	ldr	r3, [r7, #0]
   e:	4413      	add	r3, r2
  10:	60fb      	str	r3, [r7, #12]
  12:	68fb      	ldr	r3, [r7, #12]
  14:	4618      	mov	r0, r3
  16:	3714      	adds	r7, #20
  18:	46bd      	mov	sp, r7
  1a:	bc80      	pop	{r7}
  1c:	4770      	bx	lr

0000001e <main>:
  1e:	b580      	push	{r7, lr}
  20:	b082      	sub	sp, #8
  22:	af00      	add	r7, sp, #0
  24:	2114      	movs	r1, #20
  26:	200a      	movs	r0, #10
  28:	f7ff fffe 	bl	0 <add>
  2c:	6078      	str	r0, [r7, #4]
  2e:	687b      	ldr	r3, [r7, #4]
  30:	3301      	adds	r3, #1
  32:	607b      	str	r3, [r7, #4]
  34:	2300      	movs	r3, #0
  36:	4618      	mov	r0, r3
  38:	3708      	adds	r7, #8
  3a:	46bd      	mov	sp, r7
  3c:	bd80      	pop	{r7, pc}
