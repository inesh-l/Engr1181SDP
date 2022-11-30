clc
clear
%test page

CR = randi([1,3],[7,7]);

A =  CR ;
   x = unique(A);
   N = numel(x);
   count = zeros(N,1);
   for k = 1:N
      count(k) = sum (A==x(k),"all");
   end
   disp([ x(:) count ]);

count(1,1)

A =  board_change ;
   x = unique(A);
   N = numel(x);
   count = zeros(N,1);
   for k = 1:N
      count(k) = sum (A==x(k),"all");
   end
   disp([ x(:) count ]);
