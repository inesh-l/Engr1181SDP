function GM = Gameplay(~)

%Function that will generate the turnbased gameplay

GM =  board_change ;
   x = unique(GM);
   N = numel(x);
   count = zeros(N,1);
   for k = 1:N
      count(k) = sum (GM==x(k),"all");
   end
   disp([ x(:) count ]);
