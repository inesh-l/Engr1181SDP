function CR = CS_Randomizer(~)

%function will return a 7 by 7 of zeros and twos

cowCount = zeros(7);
CR_1 = zeros(7);
A = randi([0,1],[7,7]);

for k = size(cowCount)
    b(k) = k/k+1;
    CR_1(:,:,k) = b(k)*A;
end

CR = CR_1(:,:,7);

end

