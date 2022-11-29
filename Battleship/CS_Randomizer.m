function [CR] = CS_Randomizer()

%function will return a 7 by 7 of zeros and ones

cowCount = zeros(7);
 while k == size(cowCount)
     cowCount(k) = randi([0,1],[7,7]);
 end

%cowCount= randi([0,1],[7,7]);