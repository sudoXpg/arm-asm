# ARM-asm basics


### Stack
- Region of RAM for temperory data

- Used for:
    1. local variables
    2. function call args
    3. return info

- Stack Pointer (SP) is used to know eher ethe top of the stack is
- _Stack grows downwards_, when we push data to stack the SP decreases, ie:
```asm
push {r4}   ; SP   = SP - 4 (4 since 32-bit registers)
            ; [SP] = r4

pop {r4}    ; r4 = [SP]
            ; SP = SP +4
```
- In ARM, **R13 is allocated for SP**


### Stack Frame
- Stack area associated with one function call

- For function __foo()__:
```c
void foo(int a, int b){
    int c = a + b;
}
```
    Stack frame: 

    -------------------
    | saved registers  |
    | local variable a |
    | local variable b |
    | local variable c |
    |     +padding     |
    --------------------

- Frame pointer (fp) points to a refrence point for the stack of a particular function called
- r7 can be used as a frame pointer by GCC
- flow: caller -> save r7 -> func call -> restore r7

### Registers

- Arm has 16x 32-bit registers:

    - r0 to r3 = primary args/ return/ scratchpad registers
        ```
            r0 = arg 1
            r1 = arg 2
            r2 = arg 3
            r3 = arg 4

            after func:
            r0 = return arg
        ```
    - r4 to r11 = callee-saved registers, the caller function expects these to survive the entire function call (thats why we push these registers just in case)

    - r12 = Intra-procedure-call scratchpad or basically just a scratchpad kinda register

    - r13 = SP

    - r14 = LR ie link register, stores the return address when a func call happens so the PC has some address to return to

        ```
        0x010 bl <foo> ; here the cpu stores return instruction value to return to after the func call
        0x011 ...
        ```
    - r15 = PC (Program counter) to keep track of instruction being executed
