% Por Wilson Cortes Alvarez
clear all
clc
disp('Validar entrada de letra')
letra = '';
letra = input('Ingrese una letra en mayúscula: ', 's');
if letra ~= 'F' & letra ~= 'I'
    disp('Letra ingresada es diferente a F e I')
end
disp('Fin del ejercicio...')