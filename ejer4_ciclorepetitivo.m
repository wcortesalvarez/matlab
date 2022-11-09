% Por Wilson Cortes Alvarez
%Ejercicio 4 - 25 primeros carros contaminantes
clc
clear all
placa = '';
puntos = 0;
mayorcon = 0;
menorcon = 0;
promedio = 0;
sumapun = 0;
% Ingresar los primeros 25 carros
for c = 1 : 25
  placa = input('Ingrese la placa: ', 's');  
  puntos = input('Ingrese los puntos contaminantes: ');  
  sumapun = sumapun + puntos;
  %Si es el primer carro se deja como referencia inicial comparativa
  %quiere decir que es el de menor y mayor contaminación hasta que no
  %ingrese el segundo, tercero, y asi sucesivamente.
  if c == 1
    menorcon = puntos;
    mayorcon = puntos;
  end
  %Proceso de comparación
  if puntos < menorcon
    menorcon = puntos;
  elseif puntos > mayorcon   
    mayorcon = puntos;      
  end    
end
promedio = sumapun / 25;
fprintf('Promedio de los puntos contaminantes %.2f\n ', promedio)
fprintf('Menor puntos de contaminación %.0f\n ', menorcon)
fprintf('Mayor puntos de contaminación %.0f\n ', mayorcon)

