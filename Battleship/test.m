clc
clear
%test page
% 
% CR = randi([1,3],[7,7]);
% 
% A =  CR ;
%    x = unique(A);
%    N = numel(x);
%    count = zeros(N,1);
%    for k = 1:N
%       count(k) = sum (A==x(k),"all");
%    end
%    disp([ x(:) count ]);
% 
% count(1,1)
% 
% A =  board_change ;
%    x = unique(A);
%    N = numel(x);
%    count = zeros(N,1);
%    for k = 1:N
%       count(k) = sum (A==x(k),"all");
%    end
%    disp([ x(:) count ]);

score = 5;
sSize3 = 255;
zFactor3 = 5;
BGC = [167 177 183];

win_screen = simpleGameEngine('Win Screen.png',sSize3,sSize3,zFactor3,BGC);

win = 1;
%xlabel('YOUR SCORE',score)
score = 5;
prompt = fprintf('Your Score is %d\n', score);

drawScene(win_screen,win)
title("Your Score is " + score);
%fprintf('Your Score %.2f',score);
% while ending == 1
%     clear sound
%     close all
% end
