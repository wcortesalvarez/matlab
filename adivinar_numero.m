% Por Wilson Cortes Alvarez
%Generar un n�mero aleatorio entero entre 0 y 20, seguidamente dise�e un algoritmo 
%que permita establecer en cuantos intentos fue adivinado. 
clc
clear all
disp('Adivinar n�mero entre 0 y 20')
% Genera un n�mero entre cero y 20 (aleatorio)
numaquina = fix(rand * 20);
numero = 0;
intentos = 0;
respuesta = 'S';
while respuesta == 'S'
  numero = input('Ingrese un n�mero: ');
  if numero == numaquina
    % Rompe el ciclo y sale, al ser adivinado el n�mero  
    break;    
  else
    intentos = intentos + 1;  
  end    
end
fprintf('El n�mero %d fue adivinado en %d intentos\n', numero, intentos)
disp('Fin del ejercicio')


