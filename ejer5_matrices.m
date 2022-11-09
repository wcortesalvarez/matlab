% Por Wilson Cortes Alvarez
clc
clear all
censomun = 0; % Variable para la matriz de censo del municpio
promhabi = 0; % Variable para calcular el promedio de los habitantes por municipio
numtothabi = 0; % Variable para sumar la poblaci�n total
tempmayor = 0; % Variable para contar las temperaturas mayores a 15 grados cent�grados
disp('Matriz con informaci�n de municipios')
[censomun] = xlsread('InfoMunicipios.xlsx', 'Poblacion'); % Leer la informaci�n de los municipios desde Excel
for m = 1 : 10 % Recorrer los 10 municipios
 % Acumular la poblaci�n
 numtothabi = numtothabi + (censomun (m,1) + censomun(m,2)+ censomun(m,3));
 if censomun(m,5) >= 20
 % Determinar si el municipio tiene una temperatura >= a 20 grados cent�grados
 tempmayor = tempmayor + 1; % De ser afirmativo irlos contando
 end
end
promhabi = numtothabi / 10; % Determinar el promedio poblacional de los municipios
disp(sprintf('El total de habitantes es de %d', numtothabi))
disp(sprintf('El promedio de habitantes por municipio es de %12.2f', promhabi))
disp(sprintf('La cantidad de municipios con >= 20 grados cent�grados es %d', tempmayor))