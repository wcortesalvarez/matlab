% Por Wilson Cortes Alvarez
clc
clear all
num1 = 0;
num2 = 0;
num3 = 0;
num1 = input ('primer numero:');
num2 = input ('segundo numero:');
num3 = input ('tercer numero:');
if num1 > num2 & num1 > num3
    disp('numero mayor')
else 
    if num1 < num2 & num1 < num3
        disp('numero menor')
    else 
	    if num1 > num2 & num1 < num3 
           disp('numero medio')
        else 
		   if num1 < num2 & num1 > num3 
                disp('numero medio')
           end
        end
    end
end

if num2 > num1 & num2 > num3
    disp('numero mayor')
else if num2 < num1 & num2 < num3
        disp('numero menor')
    else if num2 > num1 & num2 < num3 
           disp('numero medio')
        else if num2 < num2 & num2 > num3 
                disp('numero medio')
        end
    end
    end
end
if num3 > num2 & num3 > num1
    disp('numero mayor')
else if num3 < num2 & num1 < num1
        disp('numero menor')
    else if num3 > num2 & num1 < num1 
           disp('numero medio')
        else if num3 < num2 & num1 > num1
                disp('numero medio')
        end
    end
    end
end
