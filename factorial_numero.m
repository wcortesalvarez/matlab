% Por Wilson Cortes Alvarez
%Ejercicio No.12
%Diseñar un programa que permita calcular el factorial de un número entero positivo (n!)
clc
clear all
disp('Factorial de un número dado')
numero = 0;
factorial = 1;
numero = input('Ingrese el número a generar factorial: ');
for i = 1 : numero
  factorial = factorial * i;
end
fprintf('El factorial del número %.0f es %.0f\n', numero, factorial)
disp('Fin del ejercicio')
