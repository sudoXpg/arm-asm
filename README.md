# Objective

The objective of this repository is to learm ARM assembly for ARMv7E-M

No coding-tools would be used for coding, and if it is used anywhere, the top line would explicity specify it.

I will be using K&R for learning it since it will start from basics and I will also get to refresh my C.

The way to learn ARM-asm is:
1. Read the problem statement
2. Write the C-code for it
3. Compile the code for arm and then study the disassembled code
4. After gaining confidence i would want to write direct asm code for the problem statements


compiler flags used :
```bash
arm-none-eabi-gcc \
    -march=armv7e-m \
    -mthumb \
    -O0 \
    -g \
    -c "$SRC" \
    -o "$OBJ"
```