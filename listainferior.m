% Por Wilson Cortes Alvarez
%Ejercicio No.14
%Dado un n�mero entero positivo mostrar la lista de los n�meros pares
%inferiores a �l. El l�mite inferior de la lista es 1
clc
clear all
disp('Lista de n�meros con l�mite superior')
ls = 0;
ls = input('Valor del l�mite superior de la lista: ');
for i = 1 : ls - 1 
  %Se eval�a el n�mero actual del recorrido de la lista   
  if mod(i, 2) == 0
    disp(i) 
  end    
end
disp('Fin del ejercicio')


