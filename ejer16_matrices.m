% Por Wilson Cortes Alvarez
%Un hotel tiene una distribución estructural de n pisos por n habitaciones. Se requiere determinar para la
%contratación en temporada alta de personal de seguridad lo siguiente:
%Vigilantes por pisos pares (10% de los huéspedes)
%Vigilantes por pisos impares (20% de los huéspedes)
%Vigilantes adicionales para puertas de evacuación (40% de las contratados para pisos pares e impares).
%Tenga en cuenta:
%a) No hay vigilantes de huéspedes para el primer y último piso
%b) La cantidad de vigilantes en pisos pares e impares no puede ser inferior a 1
clc
clear all
disp('Resultados de matriz en hotel tipo n x n')
hotel = 0;
canadicional = 0;
acuhab = 0;
canvigilantes = 0;
calvig = 0;
cantotal = 0;
hotel = xlsread('Hotel.xlsx', 'hoja1');
[pisos, habitaciones] = size(hotel);
% Recorrido de pisos desde el segundo piso hasta el último menos uno
for p = 2 : pisos-1
    % Recorrido de habitaciones por piso
    % Acumulas las habitaciones del piso actual
    acuhab = 0;
    for h = 1 : habitaciones
      acuhab = acuhab + hotel(p, h);     
    end
    % Calcula vigilantes depediendo si es un piso par o impar
    if mod(p, 2) == 0
      calvig = acuhab * 0.1;
    else
      calvig = acuhab * 0.2;   
    end
    % Acumula los vigilantes
    canvigilantes = canvigilantes + acuhag;  
end
% Verifica si la cantidad de vigilantes totales en pisos pares e impares es menor a 1
if canvigilantes < 1
  canvigilantes = 1;
end
% Vigilantes adicionales
canadicional = canvigilante * 0.4;
cantotal = canvigilantes + canadicional;
disp(sprint('Cantidad de vigilantes a contratar %d', cantotal))
disp('Fin del ejercicio')
