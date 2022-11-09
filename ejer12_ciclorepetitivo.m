% Por Wilson Cortes Alvarez
%Ejercicio 12 - N Diputados
clc
clear all
voto = '';
diputados = 0;
promediosi = 0;
cantidadsi  = 0;
promediono = 0;
cantidadno = 0;
promedioabs = 0;
cantidadabs = 0;
diputados = input('Ingrese la cantidad de diputados que van a votar: ');
for d = 1 : diputados
  voto = upper(input('Ingrese su voto S, N ó A: ', 's'));  
  if voto == 'S'
   cantidadsi = cantidadsi + 1;
  elseif voto == 'N' 
   cantidadno = cantidadno + 1;      
  elseif voto == 'A' 
   cantidadabs = cantidadabs + 1;      
  end 
end
promediosi = cantidadsi / diputados;
promediono = cantidadno / diputados;
promedioabs = cantidadabs / diputados;
fprintf('Promedio de los que votaron SI %.2f\n ', promediosi)
fprintf('Promedio de los que votaron NO %.2f\n ', promediono)
fprintf('Promedio de los que se Abstuvieron de votar %.2f\n ', promedioabs)

