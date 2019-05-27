! Santiago Fleiderman 
! CSC 3210
! Assignment 3
! x^3+14x^2+56x-64 -2<x<8
! October 20, 2016

.section ".data"









.section ".text"
.global main
main:
save %sp,-96,%sp
mov -2,%l0
mov -133,%l1
mov -133,%i0

mov 9,%l7
! loop starts here, while loop
test:
cmp %l0,%l7
bg  done
nop
loop:
mov %l0,%o0 !x
mov %l0,%o1 !x
call .mul !x^2
nop
mov %l0, %o1
call .mul !x^3
nop
mov %o0,%l2
nop
mov %l0,%o0
mov %l0,%o1
call .mul !(x)(x)= x^2
nop
mov 14, %o1
call .mul !(x^2)(14)
nop
mov %o0,%l3
mov %l0,%o0
mov 56,%o1
call .mul !56(x)
nop
add %l2,%l3,%l4
add %l4,%o0,%l5
sub %l5,64,%l6 !L5 - 64
mov %l6,%l1 !y= x^3+14x^2+56x-64 
! compare y with y max, this means that it will store the largest number, compares-128 and -107 -107 bigger goes to y_max repeats until x=9
cmp %l1,%i0
bl else
nop
else:
mov %l1,%i0 
next:
add %l0,1,%l0 !x++
cmp %l0,%l7
ble loop
nop 
done:! y_max = 1792

mov 1,%g1
ta 0




