function [CR] = CS_Randomizer()

%function will return a 7 by 7 of zeros
CR = zeros(7,7);

cow_grass_count = 1:49;

for k= size(cow_grass_count)
    cow_grass_count(k) = randi (0,1,49);
end