
// extern int add_nums(int x, int y);
.syntax unified
.thumb

.global add_nums
.type add_nums, %function
.thumb_func


add_nums:
    push {r4-r6, lr}
    // save just in-case
    add r0, r0, r1 
    pop {r4-r6, pc}
    // pop lr back to PC
