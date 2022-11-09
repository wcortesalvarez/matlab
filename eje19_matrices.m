% Por Wilson Cortes Alvarez
clc
clear all
matriz = 0;
salud = 0;
pension = 0;
prima = 0;
totalpa = 0;
cantidad = 0;
totalpri = 0;
contador = 0;
totalsa = 0;
disp('nomina mensual')
matriz = xlsread('liquida.xlsx', 'personas');
[nomina] = size(matriz,1);
for e = 1 : nomina
    salud = ((matriz(e,2)/30)*matriz(e,3))* 0.04;
    pension = ((matriz(e,2)/30)*matriz(e,3))* 0.04;
    if matriz(e,3) == 30
        contador = contador + 1;
        prima = prima + (matriz(e,2)*0.7);
        totalpa = totalpa + (((matriz(e,2)/30)*matriz(e,3))+prima - matriz(e,4)-salud-pension);
    else
        totalpa = totalpa + (((matriz(e,2)/30)*matriz(e,3)) - matriz(e,4)-salud-pension);
        
    end 
    
totalsa = totalsa + salud + pension;
end
disp(sprintf('valor total a pagar de la nomina mensual: %14.2f', totalpa));
disp(sprintf('la cantidad de empleados que obtuvieron la prima es: %2.f', contador))
disp(sprintf('el total de la prima extralegal es: %2.f', prima))
disp(sprintf('el total de salud mas pension es: %14.2f', totalsa))
disp('fin del ejercicio')