% Por Wilson Cortes Alvarez
clc
clear all
disp('Tabla de pesos y edades')
% Variables para contar por categoria
cn = 0;
cj = 0;
ca = 0;
cm = 0;
% Variables para sumar edades por categoria
sen = 0;
sej = 0;
sea = 0;
sem = 0;
% Variables para calcular el promedio por categoria
pron = 0;
proj = 0;
proa = 0;
prom = 0;
% Variables para ingreso de dato por persona
peso = 0;
edad = 0;
cantidad = 0;
cantidad = input('Cantidad de personas a ingresar: ');
for p = 1 : cantidad
   disp(sprintf('Persona número %d', p))
   peso = input('Peso: ');
   edad = input('Edad: ');
   if edad >= 0 & edad <= 11
       cn = cn + 1;
       sen = sen + edad;
   elseif edad >= 12 & edad <= 17
       cj = cj + 1;
       sej = sej + edad;
   elseif edad >= 18 & edad <= 59
       ca = ca + 1;
       sea = sea + edad;
   else
       cm = cm + 1;
       sem = sem + edad;
   end    
end
% Resolver la ecuación del promedio por cada categoria
pron = sen / cn;
proj = sej / cj;
proa = sea / ca;
prom = sem / cm;
% Mostrar los resultados
disp(sprintf('Promedio de la categoria niños %.2f', pron))
disp(sprintf('Promedio de la categoria adultos %.2f', proa))
disp(sprintf('Promedio de la categoria jóvenes %.2f', proj))
disp(sprintf('Promedio de la categoria mayores %.2f', prom))
disp('Fin del ejercicio...')


