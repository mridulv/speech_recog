clear all; close all; clc;  

load('new_array.mat');

arr = {};
ind = 1;

for i=1:length(k)
    m  = textscan(k{i},'%s','delimiter','_');
    for j =1:(length(m{1,1})-1)
        arr{ind} = m{1,1}{j+1,1};
        ind = ind + 1;
    end
end

new_arr = unique(arr);