% Por Wilson Cortes Alvarez
%Ejercicio 5 - N Vendedores en Empresa
clc
clear all
sueldobase=0;
venta1=0;
venta2=0;
venta3=0;
cantvendedores=0;
cantvendedores= input('digite la cantidad de vendedores: ');
comision=0;
ctotaldinerodesembolsado=0;
for numero = 1 : cantvendedores
    sueldobase=input('digite el valor del salario del trabajador:');
    venta1=input('digite el valor de la venta 1:  ');
    venta2=input('digite el valor de la venta 2:  ');
    venta3=input('digite el valor de la venta 3:  ');
    comision= (venta1 + venta2 + venta3) * 0.1;
    ctotaldinerodesembolsado= sueldobase + comision;
    fprintf('El total de la Comisión es %.2f\n ', comision)    
    fprintf('El total a pagar al vendedor de sueldo mas comisión es %.2f\n ', ctotaldinerodesembolsado)
end

