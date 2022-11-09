% Por Wilson Cortes Alvarez
%Ingresar 4 números, determinar y mostrar: ¿cuántos de ellos son pares?; ¿cuántos son
%impares?; ¿Promedio de los cuatro números?.
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
n1 = input('Primer número: ');
n2 = input('Segundo número: ');
n3 = input('Tercer número: ');
n4 = input('Cuarto número: ');
% Se evalúa el primer número y se acumula en cantidad y valor
if mod(n1, 2) == 0
    canpar = canpar + 1;
else
    canimp = canimp + 1;
end
suma = suma + n1;
% Se evalúa el segundo número y se acumula en cantidad y valor
if mod(n2, 2) == 0
    canpar = canpar + 1;
else
    canimp = canimp + 1;
end
suma = suma + n2;
% Se evalúa el tercer número y se acumula en cantidad y valor
if mod(n3, 2) == 0
    canpar = canpar + 1;
else
    canimp = canimp + 1;
end
suma = suma + n3;
% Se evalúa el cuarto número y se acumula en cantidad y valor
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
fprintf('Promedio de los números %.2f\n', promedio)
disp('Fin del ejercicio...')