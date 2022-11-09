% Por Wilson Cortes Alvarez
clc
clear all
matriz = 0;
sumato1 = 0;
sumato2 = 0;
sumato3 = 0;
sumato4 = 0;
contador = 0;
contador1 = 0;
contador2 = 0;
contador3 = 0;
contador4 = 0;
menval = 0;
mayorvalor = 0;
numfac = 0;
promedio = 0;
suma = 0;
disp ('recaudo de impuestos')
matriz = xlsread ('censomk.xlsx', 'munici');
[censo] = size(matriz,1);
for c = 1 : censo
   if matriz(c,4) == 1
       contador1 = contador1 + 1;
       sumato1 = sumato1 + matriz(c,5);
   end
   if matriz(c,4) == 2
       contador2 = contador2 + 1;
       sumato2 = sumato2 + matriz(c,5);
   end
    if matriz(c,4) == 3
       contador3 = contador3 + 1;
       sumato3 = sumato3 + matriz(c,5);
    end
    if matriz(c,4) == 4
       contador4 = contador4 + 1;
       sumato4 = sumato4 + matriz(c,5);
   end
      if c == 1
        menval = matriz(c,4);
      end
      if c == 1
      mayorvalor = matriz(c,5);
     numfac = matriz(c,1);
    elseif matriz(c,5) > mayorvalor
      mayorvalor = matriz(c,5);
      numfac = matriz(c,1);
      end
     suma = matriz(c,5)+ suma;
         contador =  contador + 1; 
end
promedio = suma /contador;
disp(sprintf('la suma total del impuesto 1 es: %2.f', sumato1))
disp(sprintf('la suma total del impuesto 2 es: %2.f', sumato2))
disp(sprintf('la suma total del impuesto 3 es: %2.f', sumato3))
disp(sprintf('la suma total del impuesto 4 es: %2.f', sumato4))
disp(sprintf('el menor valor de los tipos de impuestos es: %2.f', menval))
disp(sprintf('el numero de la factura con mayor valor es: %0.f con un valor de: %.f',numfac ,mayorvalor)) 
disp(sprintf('el promedio es: %2.f', promedio))