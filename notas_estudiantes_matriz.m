% Por Wilson Cortes Alvarez
clc
clear all
existearchivo = 0;
columnas = '';
matriznotas = 0;
nota1 = 0;
nota2 = 0;
nota3 = 0;
ndf = 0;
promedio = 0;
sumadf = 0;
candf = 0;
perdieron = 0;
canalumnos = 0;
canalumnos = input('Cantidad de alumnos: ');
% Llenar la matriz con las 3 notas parciales por alumno
for a = 1 : canalumnos
    disp(sprintf('Notas del alumno No.%d', a))
    nota1 = input('Primera nota 20%: ');
    nota2 = input('Segunda nota 30%: ');
    nota3 = input('Tercera nota 50%: ');
    % Almacenar en la matriz
    matriznotas(a, 1) = nota1;
    matriznotas(a, 2) = nota2;
    matriznotas(a, 3) = nota3;
end    
 
% Recorrer la matriz, calcular la nota definitiva y verificar si cumple
% para el promedio solicitado.
for a = 1 : canalumnos
    ndf = matriznotas(a, 1) * 0.2 + matriznotas(a, 2) * 0.3 + matriznotas(a, 3) * 0.5;
    if ndf >= 3
        sumadf = sumadf + ndf;
        candf = candf + 1;
    else
        perdieron = perdieron + 1;
    end         
end
promedio = sumadf / candf;
disp(sprintf('Promedio de las notas definitivas mayores o iguales a tres --> %.2f', promedio))
disp(sprintf('Cantidad de estudiantes que perdieron la materia --> %d', perdieron))
% Grabar la matriz en Excel
existearchivo = exist('NotasEstudiantes.xlsx', 'file');
% Si existe lo borra
if existearchivo
  !del NotasEstudiantes.xlsx;
end  
% Encabezado
columnas = {'Nota1', 'Nota2', 'Nota3'};
xlswrite('NotasEstudiantes.xlsx', columnas, 'Hoja1', 'A1');
% Datos
xlswrite('NotasEstudiantes.xlsx', matriznotas, 'Hoja1', 'A2');
disp('Fin del ejercicio')