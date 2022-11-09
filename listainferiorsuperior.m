% Por Wilson Cortes Alvarez
%Ejercicio No.15
%Dados dos números enteros mostrar la lista de los números impares comprendidos entre ellos
clc
clear all
disp('Lista de números con límite inferior y superior definidos')
li = 0;
ls = 0;
li = input('Valor del límite inferior de la lista: ');
ls = input('Valor del límite superior de la lista: ');
for i = li : ls 
  %Se evalúa el número actual del recorrido de la lista   
  if mod(i, 2) ~= 0
    disp(i) 
  end    
end
disp('Fin del ejercicio')


