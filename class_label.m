clear all; close all; clc;  

load('new_array.mat');
load('vector_data_class.mat');

label = [];
po = [];
for i=1:length(k)
    
    m  = textscan(k{i},'%s','delimiter','_');
    po = zeros(length(new_arr),1);
    
    fprintf('Iteration is %d \n',i);
    
    for j =1:(length(m{1,1})-1)
        for p = 1:length(new_arr)
            if (strcmp(new_arr{p},m{1,1}{j+1,1}))
                po(p) = 1;
            end
        end
    end
    label = [label po];
end