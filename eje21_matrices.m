clc
clear all
disp('Genere algoritmicamente la matriz identidad de una matriz cualquiera n x n');

a=[2 5 6 9;3 6 1 8;-9 -19 -100 -1234;3 766 20 5]

a(1,1)=(a(1,1)/a(1,1))
a(2,1)=(a(1,1)*-a(2,1))+a(2,1)
a(3,1)=(a(1,1)*-a(3,1))+a(3,1)
a(4,1)=(a(1,1)*-a(4,1))+a(4,1)

a(2,2)=(a(2,2)/a(2,2))
a(1,2)=(a(2,2)*-a(1,2))+a(1,2)
a(3,2)=(a(2,2)*-a(3,2))+a(3,2)
a(4,2)=(a(2,2)*-a(4,2))+a(4,2)

a(3,3)=(a(3,3)/a(3,3))
a(1,3)=(a(3,3)*-a(1,3))+a(1,3)
a(2,3)=(a(3,3)*-a(2,3))+a(2,3)
a(4,3)=(a(3,3)*-a(4,3))+a(4,3)

a(4,4)=(a(4,4)/a(4,4))
a(1,4)=(a(4,4)*-a(1,4))+a(1,4)
a(2,4)=(a(4,4)*-a(2,4))+a(2,4)
a(3,4)=(a(4,4)*-a(3,4))+a(3,4)