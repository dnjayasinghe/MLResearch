function [ hw] = hammingW( a )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
hw=0;
number=dec2bin(a);
hw = sum(number=='1');    
    

end

