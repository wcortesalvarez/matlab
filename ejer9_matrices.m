% Por Wilson Cortes Alvarez
%Ejercicio No.9 Matrices
clc
clear all
censomun = 0;  % Variable para la matriz de censo del municipio
categorias = 0; % Variable para la matriz de categorias
promhabi = 0; % Variable para calcular el promedio de los habitantes por municipio
numtothabi = 0; % Variable para sumar la población total
tempmayor = 0; % Variable para contar las temperaturas mayores a 15 grados centígrados
acumregalias = 0;
disp('Proceso con información de Municipios y Categorias')
[censomun] = xlsread('InfoMunicipios.xlsx', 'Poblacion'); % Leer la información de los municipios desde Excel
[categorias] = xlsread('InfoMunicipios.xlsx', 'Categorias'); % Leer la información de las categorias desde Excel
for m = 1 : 10 % Recorrer los 10 municipios
 % Acumular la población
 numtothabi = numtothabi + (censomun (m,1) + censomun(m,2)+ censomun(m,3));
 if censomun(m,5) >= 20
 % Determinar si el municipio tiene una temperatura >= a 20 grados centígrados
 tempmayor = tempmayor + 1; % De ser afirmativo irlos contando
 end
 % Comparar si la categoria del municipio se encuentra dentro de la matriz Categorias
 for c = 1 : 6
   if censomun(m,6) == categorias(c, 1)
     % Si existe se acumula
     acumregalias = acumregalias + categorias(c, 2);
	 break; % Si la encontro se sale del ciclo de las categorias
   end  
 end 
end
promhabi = numtothabi / 10; % Determinar el promedio poblacional de los municipios
disp('----- RESULTADOS FINALES -----')
fprintf('El total de habitantes es de %.0f\n', numtothabi)
fprintf('El promedio de habitantes por municipio es de %.2f\n', promhabi)
fprintf('La cantidad de municipios con grados centígrados >= 20 es %d\n', tempmayor)
fprintf('El acumulado de las regalias es %.0f\n', acumregalias)
disp('Fin del ejercicio...')
