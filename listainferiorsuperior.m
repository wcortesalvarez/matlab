% Por Wilson Cortes Alvarez
%Ejercicio No.15
%Dados dos n�meros enteros mostrar la lista de los n�meros impares comprendidos entre ellos
clc
clear all
disp('Lista de n�meros con l�mite inferior y superior definidos')
li = 0;
ls = 0;
li = input('Valor del l�mite inferior de la lista: ');
ls = input('Valor del l�mite superior de la lista: ');
for i = li : ls 
  %Se eval�a el n�mero actual del recorrido de la lista   
  if mod(i, 2) ~= 0
    disp(i) 
  end    
end
disp('Fin del ejercicio')


