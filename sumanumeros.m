% Por Wilson Cortes Alvarez
%Ejercicio No.13
%Ingresar n n�meros y al final mostrar: Sumatoria de pares, sumatoria de
%impares y promedio general.
clc
clear all
disp('Suma en n�meros y promedio')
cantidad = 0;
numero = 0;
sumapar = 0;
sumaimp = 0;
promedio = 0;
cantidad = input('Cantidad de n�meros a procesar: ');
for i = 1 : cantidad
  numero = input('Ingrese un n�mero: ');
  if mod(numero, 2) == 0
    % Sumatoria de impares
    sumapar = sumapar + numero;
  else
    sumaimp = sumaimp + numero;      
  end    
end
promedio = (sumapar + sumaimp) / cantidad;
fprintf('La sumatoria de los n�meros pares es %.0f\n', sumapar)
fprintf('La sumatoria de los n�meros impares es %.0f\n', sumaimp)
fprintf('El promedio de los n�meros es %.2f\n', promedio)
disp('Fin del ejercicio')


