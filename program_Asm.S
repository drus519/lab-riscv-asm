.data
N:
.word 4
M:
.word 2
matrix:
.word 2, -9
.word 1, 11
.word -3, 6
.word -7, 5
result:
.word 0 # сумма положительных элементов

.text

main:
la a2, N
la a3, M
la a4, matrix
call proc
#выводим результат
addi a0, x0, 1 # печать int, сумма и так в регистре a1
ecall
addi a0, x0, 10
ecall

proc:
lw t0, 0(a2) # количество строк
lw t1, 0(a3) # количество столбцов

addi t2, t2, 0 # индекс строки

addi a1,x0,0 # обнуляем регистр с суммой

init:
addi t3, x0, 0 #храним индекс столбца

loop:
lw t4, 0(a4) # загружаем очередной элемент
addi a4, a4, 4 # сдвигаем указатель
blt t4, x0, m1 # если этот элемент меньше 0, то к m1
add a1,a1,t4 #иначе прибавляем его к сумме
m1:
addi t3, t3, 1
blt t3, t0, loop

addi t2, t2, 1
blt t2, t1, init 
ret

