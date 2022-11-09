filename='Features.xlsx';
name='Adrian';
age=18;
roll=22;
gpa=3.55;
fileExist = exist(filename,'file');
% sino existe el archivo de Excel lo crea con su cabecera 
if fileExist==0
    header = {'name', 'age ','roll' , 'gpa'};
    xlswrite(filename,header);
end
[a, b,input] = xlsread(filename); % Read in your xls file to a cell array (input)
new_data = {name, age, roll, gpa}; % This is a cell array of the new line you want to add
output = cat(1,input,new_data); % Concatinate your new data to the bottom of input
xlswrite(filename,output); % Write to the new excel file. 