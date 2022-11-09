% Por Wilson Cortes Alvarez
%Generar un número aleatorio entero entre 0 y 20, seguidamente diseñe un algoritmo 
%que permita establecer en cuantos intentos fue adivinado. 
clc
clear all
disp('Adivinar número entre 0 y 20')
% Genera un número entre cero y 20 (aleatorio)
numaquina = fix(rand * 20);
numero = 0;
intentos = 0;
respuesta = 'S';
while respuesta == 'S'
  numero = input('Ingrese un número: ');
  if numero == numaquina
    % Rompe el ciclo y sale, al ser adivinado el número  
    break;    
  else
    intentos = intentos + 1;  
  end    
end
fprintf('El número %d fue adivinado en %d intentos\n', numero, intentos)
disp('Fin del ejercicio')


