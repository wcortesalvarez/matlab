% Por Wilson Cortes Alvarez
%Ejercicio No.14
%Dado un número entero positivo mostrar la lista de los números pares
%inferiores a él. El límite inferior de la lista es 1
clc
clear all
disp('Lista de números con límite superior')
ls = 0;
ls = input('Valor del límite superior de la lista: ');
for i = 1 : ls - 1 
  %Se evalúa el número actual del recorrido de la lista   
  if mod(i, 2) == 0
    disp(i) 
  end    
end
disp('Fin del ejercicio')


