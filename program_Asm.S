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
.word 0 # ����� ������������� ���������

.text

main:
lw a2, N
lw a3, M
la a4, matrix
call proc
#������� ���������
addi a0, x0, 1 # ������ int, ����� � ��� � �������� a1
ecall
addi a0, x0, 10
ecall

proc:
mv t0, a2 # ���������� �����
mv t1, a3 # ���������� ��������

addi t2, t2, 0 # ������ ������

addi a1,x0,0 # �������� ������� � ������

init:
addi t3, x0, 0 #������ ������ �������

loop:
lw t4, 0(a4) # ��������� ��������� �������
addi a4, a4, 4 # �������� ���������
blt t4, x0, m1 # ���� ���� ������� ������ 0, �� � m1
add a1,a1,t4 #����� ���������� ��� � �����
m1:
addi t3, t3, 1
blt t3, t0, loop

addi t2, t2, 1
blt t2, t1, init 
ret

