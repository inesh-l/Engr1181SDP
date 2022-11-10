clc
clear

%% Board Scene Without AI
sWidth = 63;
sHeight = 63;
zFactor = 5;
BGC = [0,0,255];
board_scene = simpleGameEngine("connect4_sprites.png", sWidth, sHeight, zFactor, BGC);
blank=1;
empty=2;
yellow=3;
red=4;
controls=5:11;
board=empty * ones(7,7);
board(1,:)=controls;
% Draw the board itself
drawScene(scene,board);
% Drop a chip
