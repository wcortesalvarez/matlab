% Por Wilson Cortes Alvarez
%Ejercicio No.12
%Dise�ar un programa que permita calcular el factorial de un n�mero entero positivo (n!)
clc
clear all
disp('Factorial de un n�mero dado')
numero = 0;
factorial = 1;
numero = input('Ingrese el n�mero a generar factorial: ');
for i = 1 : numero
  factorial = factorial * i;
end
fprintf('El factorial del n�mero %.0f es %.0f\n', numero, factorial)
disp('Fin del ejercicio')
