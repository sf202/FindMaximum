! Santiago Fleiderman 
! CSC 3210
! Assignment 3
! x^3+14x^2+56x-64 -2<x<8
! October 20, 2016

.section ".data"
define(a3,9)
define(a2,14)
define(a1,56)
define(a0,64)

define(x_r,l0)
define(y_r,l1)
define(y_Max,i0)

.section ".text"
.global main
main:
save %sp,-96,%sp
mov -2,%x_r
mov -133,%y_r
mov -133,%y_Max

mov a3,%l7
! loop starts here, while loop
test:
cmp %x_r,%l7
bg  done
nop
loop:
mov %x_r,%o0 !x
mov %x_r,%o1 !x
call .mul !x^2
nop
mov %x_r, %o1
call .mul !x^3
nop
mov %o0,%l2
nop
mov %x_r,%o0
mov %x_r,%o1
call .mul !(x)(x)= x^2
nop
mov a2, %o1
call .mul !(x^2)(14)
nop
mov %o0,%l3
mov %x_r,%o0
mov a1,%o1
call .mul !56(x)
nop
add %l2,%l3,%l4
add %l4,%o0,%l5
sub %l5,a0,%l6 !L5 - a0
mov %l6,%y_r !y= x^3+14x^2+56x-64 
! compare y with y max, this means that it will store the largest number, compares-128 and -107 -107 bigger goes to y_max repeats until x=9
cmp %y_r,%y_Max
bl else
nop
else:
mov %y_r,%y_Max 
next:
add %x_r,1,%x_r !x++
cmp %x_r,%l7
ble loop
nop 
done:! y_max = 1792

mov 1,%g1
ta 0




