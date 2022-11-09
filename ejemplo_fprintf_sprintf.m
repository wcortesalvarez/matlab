% Por Wilson Cortes Alvarez
clc
clear all
nombre = '';
edad = 0;
ciudad = '';
nombre = 'Pedro';
edad = 30;
ciudad = 'Pereira';
disp('-- Resultado con fprintf --')
fprintf('Mi nombre es %s y tengo %d\n', nombre, edad)
fprintf('Soy de %s\n', ciudad)
disp('-- Resultado con disp y sprintf --')
disp(sprintf('Mi nombre es %s y tengo %d', nombre, edad))
disp(sprintf('Soy de %s', ciudad))