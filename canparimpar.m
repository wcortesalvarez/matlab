% Por Wilson Cortes Alvarez
%Ingresar 4 n�meros, determinar y mostrar: �cu�ntos de ellos son pares?; �cu�ntos son
%impares?; �Promedio de los cuatro n�meros?.
clc
clear all
n1 = 0;
n2 = 0;
n3 = 0;
n4 = 0;
canpar = 0;
canimp = 0;
promedio = 0;
suma = 0;
n1 = input('Primer n�mero: ');
n2 = input('Segundo n�mero: ');
n3 = input('Tercer n�mero: ');
n4 = input('Cuarto n�mero: ');
% Se eval�a el primer n�mero y se acumula en cantidad y valor
if mod(n1, 2) == 0
    canpar = canpar + 1;
else
    canimp = canimp + 1;
end
suma = suma + n1;
% Se eval�a el segundo n�mero y se acumula en cantidad y valor
if mod(n2, 2) == 0
    canpar = canpar + 1;
else
    canimp = canimp + 1;
end
suma = suma + n2;
% Se eval�a el tercer n�mero y se acumula en cantidad y valor
if mod(n3, 2) == 0
    canpar = canpar + 1;
else
    canimp = canimp + 1;
end
suma = suma + n3;
% Se eval�a el cuarto n�mero y se acumula en cantidad y valor
if mod(n4, 2) == 0
    canpar = canpar + 1;
else
    canimp = canimp + 1;
end
suma = suma + n4;
promedio = suma / 4;
disp('Mostrar resultados')
fprintf('Cantidad de pares %d\n', canpar)
fprintf('Cantidad de impares %d\n', canimp)
fprintf('Promedio de los n�meros %.2f\n', promedio)
disp('Fin del ejercicio...')